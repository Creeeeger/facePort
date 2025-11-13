.class public final Lgov/nist/javax/sip/header/Accept;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x6d2a503d84e287e7L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Accept"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Accept;

    iget-object p0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/MediaRange;

    iput-object p0, v0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    return-object v0
.end method

.method public final encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Accept;->encodeBody(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encodeBody(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method public final setContentSubType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-void
.end method
