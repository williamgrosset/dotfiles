function wtr --description "Remove git worktree"
    set -l branch $argv[1]
    if test -z "$branch"
        echo "Usage: wtr <branch-name>"
        return 1
    end

    set -l base (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$base"
        echo "Not in a git repo"
        return 1
    end

    set -l wt_dir "$base/../"(basename $base)"-$branch"
    git worktree remove "$wt_dir"
end
