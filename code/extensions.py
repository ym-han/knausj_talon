from .user_settings import get_list_from_csv
from talon import Module, Context, actions, app

mod = Module()
mod.list("file_extension", desc="A file extension, such as .py")

_file_extensions_defaults = {
    "dot pie": ".py",
    "dot talon": ".talon",
    "dot markdown": ".md",
    "dot shell": ".sh",
    # "dot vim": ".vim",
    "dot see": ".c",
    "dot com": ".com",
    "dot net": ".net",
    "dot org": ".org",
    "dot us": ".us",
    "dot U S": ".us",
    "dot bin": ".bin",
    "dot jay son": ".json",
    "dot J S": ".js",
    "dot java script": ".js",
    # "dot TS": ".ts",
    "dot csv": ".csv",
    "dot text": ".txt",
}

file_extensions = get_list_from_csv(
    "file_extensions.csv",
    headers=("File extension", "Name"),
    default=_file_extensions_defaults,
)

ctx = Context()
ctx.lists["self.file_extension"] = file_extensions