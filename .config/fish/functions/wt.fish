function wt --description "Create git worktree and open in new wezterm tab"
    set -l branch $argv[1]
    if test -z "$branch"
        echo "Usage: wt <branch-name> [base-ref]"
        return 1
    end

    set -l base (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$base"
        echo "Not in a git repo"
        return 1
    end

    set -l ref (test -n "$argv[2]" && echo $argv[2] || echo HEAD)
    set -l wt_dir "$base/../"(basename $base)"-$branch"

    git worktree add -b "$branch" "$wt_dir" "$ref" 2>/dev/null
    or git worktree add "$wt_dir" "$branch" 2>/dev/null
    or begin
        echo "Failed to create worktree"
        return 1
    end

    wezterm cli spawn --cwd "$wt_dir"
    echo "Worktree ready: $wt_dir"
end
