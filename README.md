# 🧾 Unix Disk Space Usage Report Script

This shell script automates disk space monitoring for specific directories on a Unix-based server. It reads a list of directories from a text file (needs to be created), calculates space usage for each, writes the results to a log file, and sends a summary report via email to designated recipients.

Designed for enterprise use, this script enables proactive disk usage tracking to prevent space-related issues and reduce manual overhead.

---

## 📂 How It Works

1. Reads directory paths from `path_list.txt`.
2. Calculates the disk usage using `du` and `df`.
3. Appends the output to `results.txt`.
4. Sends the summarized disk usage report via email.

---

## 📋 File Structure

| File                         | Description                                      |
|------------------------------|--------------------------------------------------|
| `code.sh`               | Main shell script to perform disk usage checks. |
| `path_list.txt`          | List of target directories (one per line).       |
| `results.txt`            | Output file containing usage summary.            |

---

## 🛠️ Usage Instructions

1. **Edit the Path List**
   Add target directories in `path_list.txt`, one per line:

Schedule it in unix server:
0 6 * * * /user/prajwal/path/space_scripts/IDL_space.sh

✅ Benefits
    Automates periodic disk checks.
    Prevents space-related outages.
    Centralized reporting via email.
    Easy to schedule with cron jobs.

This helps with proactive disk space management, especially in enterprise environments like EDW systems where disk overuse can impact critical processes.

🤝 Contributions
Contributions, suggestions, and improvements are welcome! Please feel free to open issues or submit pull requests.
