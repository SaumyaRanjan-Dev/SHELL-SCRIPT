# Essential Linux Commands for Professionals

## File and Directory Operations

1. **ls**: List directory contents.
    ```sh
    ls -l
    ls -a
    ```

2. **cd**: Change the current directory.
    ```sh
    cd /path/to/directory
    cd ~  # Go to the home directory
    ```

3. **cp**: Copy files or directories.
    ```sh
    cp source_file destination_file
    cp -r source_directory destination_directory
    ```

4. **mv**: Move or rename files or directories.
    ```sh
    mv old_name new_name
    mv file /new/path/
    ```

5. **rm**: Remove files or directories.
    ```sh
    rm file
    rm -r directory
    ```

6. **touch**: Create an empty file or update the timestamp of an existing file.
    ```sh
    touch newfile
    ```

7. **mkdir**: Create directories.
    ```sh
    mkdir new_directory
    ```

8. **rmdir**: Remove empty directories.
    ```sh
    rmdir directory
    ```

## File Viewing and Editing

1. **cat**: Concatenate and display file content.
    ```sh
    cat file
    ```

2. **less**: View file content one screen at a time.
    ```sh
    less file
    ```

3. **head**: Display the first part of a file.
    ```sh
    head file
    ```

4. **tail**: Display the last part of a file.
    ```sh
    tail file
    tail -f file  # Follow the file as it grows
    ```

5. **nano**: Simple text editor.
    ```sh
    nano file
    ```

6. **vim**: Advanced text editor.
    ```sh
    vim file
    ```

## System Monitoring and Management

1. **ps**: Report a snapshot of current processes.
    ```sh
    ps aux
    ```

2. **top**: Display and update sorted information about processes.
    ```sh
    top
    ```

3. **htop**: Interactive process viewer (if installed).
    ```sh
    htop
    ```

4. **df**: Report file system disk space usage.
    ```sh
    df -h
    ```

5. **du**: Estimate file space usage.
    ```sh
    du -sh directory/
    ```

6. **free**: Display memory usage.
    ```sh
    free -h
    ```

7. **uptime**: Tell how long the system has been running.
    ```sh
    uptime
    ```

8. **dmesg**: Print or control the kernel ring buffer.
    ```sh
    dmesg | tail
    ```

## Network Commands

1. **ip**: Show/manipulate routing, devices, policy routing, and tunnels.
    ```sh
    ip addr show
    ip link show
    ```

2. **ping**: Send ICMP ECHO_REQUEST to network hosts.
    ```sh
    ping google.com
    ```

3. **netstat**: Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
    ```sh
    netstat -tuln
    ```

4. **ss**: Another utility to investigate sockets.
    ```sh
    ss -tuln
    ```

5. **curl**: Transfer data from or to a server.
    ```sh
    curl http://example.com
    ```

6. **wget**: Retrieve files from the web.
    ```sh
    wget http://example.com/file
    ```

## Disk Management

1. **fdisk**: Partition table manipulator for Linux.
    ```sh
    sudo fdisk /dev/sda
    ```

2. **mkfs**: Build a Linux file system.
    ```sh
    sudo mkfs.ext4 /dev/sda1
    ```

3. **mount**: Mount a file system.
    ```sh
    sudo mount /dev/sda1 /mnt
    ```

4. **umount**: Unmount file systems.
    ```sh
    sudo umount /mnt
    ```

## Permissions and Ownership

1. **chmod**: Change file modes or Access Control Lists.
    ```sh
    chmod 755 file
    chmod +x script.sh
    ```

2. **chown**: Change file owner and group.
    ```sh
    sudo chown user:group file
    ```

3. **chgrp**: Change group ownership.
    ```sh
    sudo chgrp group file
    ```

## Package Management (Debian/Ubuntu)

1. **apt-get**: APT package handling utility.
    ```sh
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install package
    ```

2. **dpkg**: Debian package manager.
    ```sh
    sudo dpkg -i package.deb
    sudo dpkg -r package
    ```

## Package Management (RedHat/CentOS)

1. **yum**: Package manager for RPM-based distributions.
    ```sh
    sudo yum update
    sudo yum install package
    ```

2. **rpm**: RPM package manager.
    ```sh
    sudo rpm -i package.rpm
    sudo rpm -e package
    ```

## Miscellaneous

1. **alias**: Create an alias for a command.
    ```sh
    alias ll='ls -la'
    ```

2. **find**: Search for files in a directory hierarchy.
    ```sh
    find /path -name filename
    ```

3. **grep**: Print lines matching a pattern.
    ```sh
    grep "pattern" file
    ```

4. **awk**: Pattern scanning and processing language.
    ```sh
    awk '{print $1}' file
    ```

5. **sed**: Stream editor for filtering and transforming text.
    ```sh
    sed 's/old/new/g' file
    ```

