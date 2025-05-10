# Prepares a self-hosted GitHub Actions runner environment by marking the working directory as a safe Git repo.
# Run this before launching the runner (e.g., after reboot) to prevent fatal Git ownership errors.

# Before pushing on windows machine, run this script to set the Git repo as safe:
# Run like this each time after a reboot:
#   .\runner_setup.ps1
#   .\run.cmd

$repoPath = Get-Location
git config --global --add safe.directory "$repoPath"
Write-Host "Marked as safe: $repoPath"