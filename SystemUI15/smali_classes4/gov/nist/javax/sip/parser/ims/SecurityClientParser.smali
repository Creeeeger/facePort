.class public final Lgov/nist/javax/sip/parser/ims/SecurityClientParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1

    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_enter()V

    const/16 v0, 0x85a

    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_leave()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_leave()V

    throw p0
.end method
