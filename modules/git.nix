{ ... }:

{
  programs.git = {
    enable = true;

    config = {
      user = {
        name = "Elisa Ihle Julbø";
        email = "elisa.ihle.julbo@gmail.com";
      };

      init = {
        defaultBranch = "main";
      };

      pull = {
        rebase = true;
      };

      alias = {
        tree = "log --graph --oneline --all --decorate";
        branch-sync = "!git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -D";
      };
    };
  };
}

