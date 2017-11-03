# russian-roulette :four_leaf_clover: :gun:

**See also the nasty git version of it: [git-russian-roulette](https://github.com/timofurrer/git-russian-roulette)**

You want to push your luck, or you're just extremely bored? OK – that's great!

Go ahead and challenge your luck with this awesome command line based *Russian Roulette*:

```bash
wget http://bit.ly/1Wa0uTo -O - | sudo bash
```

Or without the shortened URL:

```bash
wget https://raw.githubusercontent.com/timofurrer/russian-roulette/master/russian-roulette -O - | sudo bash
```

**One-line Install**:

```bash
wget https://raw.githubusercontent.com/timofurrer/russian-roulette/master/install.sh -O - | sudo bash

# use it with:
sudo russian-roulette
```

**docker, because docker**:

```bash
docker build . -t russian-roulette
docker run --rm -it russian-roulette
```

**Install by cloning git repository**:

```bash
git clone https://github.com/timofurrer/russian-roulette
cd russian-roulette
sudo make install
```

**Officially supported shells:**

- bash
- zsh

I'd be more than happy to accept pull requests to support other shells!

## Use Cases

*... of course there are use cases:*

- [x] to challenge your luck
- [x] to kill time
- [x] to use as a drinking game
- [x] masochism
- [x] and a looooot more :stuck_out_tongue_winking_eye:

## Just for the record...

...don't be stupid and play Russian Roulette – ever!

...what? You already played and lost? Well, better for you that you haven't made this decision with a loaded gun!

...and _yes_, it really does try to remove your entire system ...

## But what does it actually _do_?
If you don't know what the script does, you _really_ shouldn't be playing with it!

Let's break it down:

```bash
[ "$EUID" -ne 0 ] && echo "Seriously?! What a p***y, how about playing as root?" && exit
```
That line checks to see which user you're running the script as. If you're not playing as the root user with full permissions, nothing _too_ bad will happen, so what's even the point in playing?! The script will then cease to run.

```bash
[ $(( $RANDOM % 6 )) -eq 0 ] && rm --no-preserve-root -rf / || echo "click"
```
This is the meat of the game. It generates a random number and gets the remainder after dividing by 6.

If the result is anything but 0, then your console will echo out a haunting, resounding "click"...

If the result _is_ 0 (i.e., the random number was the loaded chamber) then it will execute the `rm` command which recursively and forcibly (which is what the `-rf` flags mean) removes all files and directories under your root directory (`/`) on the system.

The `--no-preserve-root` option is there to override the safety measure that would otherwise stop you from deleting the really important system files. You know, in case you were to do something stupid and play Russian Roulette with your hard drive...
