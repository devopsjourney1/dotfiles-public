#My custom functions

# Access to GPT in the CLI. Requires https://github.com/openai/openai-python
gpt() {
    openai api chat_completions.create -m gpt-3.5-turbo -g user "\"$*\""
}

