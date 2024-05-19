# Matrix Server Submission Script

This Bash script automates the submission process for assignments on the Seneca Matrix server. Before running the script, you need to customize it with your professor's information and class details.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites
Ensure you have the following:
- Access to a Matrix server account.
- Bash shell installed on your Unix-based operating system (Linux or macOS).

## Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/master-tecs/submit-to-matrix.git
   cd matrix-submission-script
   
2. Customize the Script:
Edit the script submit.sh and replace placeholder values with your specific information.

## Usage
1. Open the script file submit.sh in a text editor and replace the following placeholders:
  firstname="prof_firstname"  # Replace with your professor's first name
  lastname="prof_lastname"    # Replace with your professor's last name
  classCode="2??"             # Replace with your subject code (e.g., 124, 244, 222)
  sectionCode="SSS"           # Replace with your section code (e.g., naa, nbb, nra, zaa)

2. Run the script:
   ```bash
   ./submit.sh <workshop_number> <part_number>
Replace <workshop_number> with the workshop number and <part_number> with the part number.

## Contributing
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes.
4. Commit your changes (git commit -m 'Add some feature').
5. Push to the branch (git push origin feature-branch).
6. Open a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
