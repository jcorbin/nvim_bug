// To reproduce, run the following in normal mode: (requires tpope unimpaired `[e` exchange binding)
//   9ggf r<Enter>k[eJA;<Esc>JjVj]e]ece
package main

func bar() (int, error)

func foo() error {
	n, err := bar()
	if err != nil {
		return err
	}
	n = n * n
	return nil
}
