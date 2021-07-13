*** Settings ***
Library     RPA.Email.ImapSmtp

*** Test Cases ***

TC1
    Authorize   account=shinebrightanytime@gmail.com    password=balaji@12345
    ...     smtp_server=smtp.gmail.com  smtp_port=587   imap_server=imap.gmail.com     imap_port=993
    Send Message    shinebrightanytime@gmail.com    balaji0017@gmail.com
    ...     subject=RPATest
    ...     body=Hello