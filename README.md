# 🧰 Alpine Devbox — With Zsh, SSH, and CLI Tools

This project sets up a **lightweight development environment** inside a **Docker container** using **Alpine Linux**.
It includes common command-line tools like:

* ✅ `zsh` (your main shell, preconfigured with Oh My Zsh)
* ✅ `bat` (better `cat`)
* ✅ `fd` (better `find`)
* ✅ `ag` (The Silver Searcher — faster search tool)
* ✅ `openssh-client` (so you can run `ssh`, `git clone`, etc.)
* ✅ SSH Agent Forwarding (so your SSH keys stay *outside* the container for security!)

This setup is ideal if you want a **clean, disposable environment** without polluting your real machine.

---

## 🚀 How to Use

### 1. **Build the Container**

```bash
docker compose build
```

This installs everything into the container.

---

### 2. **Start the Devbox**

```bash
docker compose run devbox
```

You’ll be dropped **inside a shell that looks like this:**

```
➜  /workspace %
```

You're now **inside the Alpine Devbox** using **Zsh**.

---

### 3. **Verify SSH is Working (Optional but Recommended)**

If your host has an SSH key loaded, test it:

```bash
ssh -T git@github.com
```

✔️ If it says *"Hi username! You've successfully authenticated…"*, your SSH agent forwarding is working.

---

## 📁 File Access

* The **current folder** on your computer is automatically mounted into the container at `/workspace`.
* Any files you edit inside the container will **appear on your real machine** too.

---

## 🔧 Useful Commands Inside Devbox

| Tool            | What it Does                   | Try This           |
| --------------- | ------------------------------ | ------------------ |
| `zsh`           | Friendly shell experience      | Already default    |
| `bat`           | Colorful replacement for `cat` | `bat somefile.txt` |
| `fd`            | Fast file search               | `fd something`     |
| `ag`            | Search inside files            | `ag keyword`       |
| `nano` or `vim` | Text editor (if installed)     | `nano file.txt`    |

---

## ❌ When You're Done

Just type:

```bash
exit
```

The dev environment **goes away cleanly** — nothing stays running in the background.

---

## 💡 Why Use This?

* No need to **install tools on your real machine**
* Consistent environment across different computers
* Safe testing ground for scripts or git work

