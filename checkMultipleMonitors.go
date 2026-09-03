package main

import (
	"encoding/json"
	"fmt"
	"os/exec"
)

type Output struct {
	Name   string `json:"name"`
	Active bool   `json:"active"`
}

func main() {
	// Query outputs directly from swaymsg
	cmd := exec.Command("swaymsg", "-t", "get_outputs")
	out, err := cmd.Output()
	if err != nil {
		fmt.Println("Error fetching outputs:", err)
		return
	}

	var outputs []Output
	if err := json.Unmarshal(out, &outputs); err != nil {
		fmt.Println("Error parsing JSON:", err)
		return
	}

	fmt.Printf("Detected %d output(s)\n", len(outputs))

	if len(outputs) > 1 {
		// Disable internal display when multiple monitors exist
		dcmd := exec.Command("swaymsg", "output", "eDP-1", "disable")
		if cout, err := dcmd.CombinedOutput(); err != nil {
			fmt.Println("Error disabling eDP-1:", err, string(cout))
		} else {
			fmt.Println("eDP-1 disabled:", string(cout))
		}
	} else {
		// Re-enable internal display if it's the only monitor left
		ecmd := exec.Command("swaymsg", "output", "eDP-1", "enable")
		if cout, err := ecmd.CombinedOutput(); err != nil {
			fmt.Println("Error enabling eDP-1:", err, string(cout))
		} else {
			fmt.Println("eDP-1 enabled:", string(cout))
		}
	}
}
