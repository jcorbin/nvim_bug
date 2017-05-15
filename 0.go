// run the following in normal mode: 5ggJjVj]ece
package main

func foo() error {
	if n, err := bar();
	err != nil {
		return err
	}
	n = n * n
	return nil
}
