# Spigot-Updater
A simple updater for Spigot server, using the latest BuildTools

# Description

This is a shell script can update `Spigot Minecraft Server` automatically.

# Way to use

## Get the file

### Step 1 

Head to my [repository](https://github.com/Kimiblock/Spigot-Updater/releases)  

### Step 2

Get the newest release

## Set environment variables

### Step 1

Open the shell script.

### Step 2

Check the location where you store you server.

### Step 3

Modify `Server_Path=`, Add your path.

It'll look like this: 

```shell
Server_Path=~/test
```

## Run the script

### Step 1

cd to where you store yout script

### Step 2

```bash
sh Update_Spigot.sh
```

or

```bash
./Update_Spigot.sh
```

# Advanced

## Modify the location of Cache

Open the script in a editor

Change `Cache=~/Spigot_Update` variable
