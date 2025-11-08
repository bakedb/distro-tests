from datetime import datetime

disclaimer_file = "disclaimer.md"
distro_file = "distro-rankings.md"
desktop_file = "desktop-env-rankings.md"

output_file = "readme.md"

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

def number_lines(filepath):
    numbered = []
    with open(filepath, "r") as f:
        for i, line in enumerate(f, start=1):
            line = line.strip()
            if line:  # skip empty lines
                numbered.append(f"{i}. {line}")
    return "\n".join(numbered)

with open(output_file, "w") as out:
    with open(disclaimer_file, "r") as f:
        out.write(f.read().strip() + "\n\n")

    out.write("# Distro Rankings\n")
    out.write(f"> Last Updated: {timestamp}\n\n")
    out.write(number_lines(distro_file) + "\n\n")

    out.write("# Desktop Environment Rankings\n")
    out.write(f"> Last Updated: {timestamp}\n\n")
    out.write(number_lines(desktop_file) + "\n")
