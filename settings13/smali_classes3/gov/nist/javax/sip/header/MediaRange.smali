.class public Lgov/nist/javax/sip/header/MediaRange;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "MediaRange.java"


# static fields
.field private static final serialVersionUID:J = -0x5763e290c720f4eaL


# instance fields
.field protected subtype:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-void
.end method
