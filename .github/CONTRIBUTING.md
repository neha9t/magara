# Contributing

First off, thank you for considering contributing to Mağara. It's people like
you that make Mağara such a great application.

**Working on your first Pull Request?** You can learn how from this *free*
series [How to Contribute to an Open Source Project on GitHub][1]

> :warning: If you find that something is missing, please file an issue.

## 1. Create an Issue on GitHub

> Please see [this link](https://github.com/BerkhanBerkdemir/magara/issues/new/choose)
> for how to write an issue for feature request or bug report

The first step to contributing to Mağara is creating an issue report in
our [issue tracking system][2]. Please take a second to search for the issue or
feature before creating a new one.

## 2. Fork & create a feature branch

The next step is to [fork Mağara][3], and create a new git branch based on the
feature or issue you're working on. Please use a descriptive name for your
branch.

For example great branch name would be (where issue #2303 is the ticket
you're working on):

    git checkout -b 2303-add-an-unicorn

## 3. Prerequisites and installation

Please follow [Getting Started][4] guide

## 4. Get the test suite running

Mağara is an application that universities, colleges etc., rely on for managing
housing data for their students in their production system. Therefore, bugs are
*evil*, but we can get rid off them with writing beautiful tests. Although we're
not perfect, we pride ourselves on writing well tested code. I hope you do too
:smile:

Mağara uses RSpec and Capybara for it's test suite.

> :warning: Make sure you have a recent version of Bundler

Install test environment:

    bundle install

Now you should be able to run the entire suite using:

    bundle exec rspec

## 5. Push changes, and open a PR

Please follow this [emoji][5] guide when you save your commits.

[1]: https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github
[2]: https://github.com/BerkhanBerkdemir/magara/issues
[3]: https://github.com//BerkhanBerkdemir/magara/fork
[4]: https://github.com/BerkhanBerkdemir/magara#getting-started
[5]: https://gitmoji.carloscuesta.me/
