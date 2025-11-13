.class public Lgov/nist/javax/sip/header/ContentType;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/header/ContentTypeHeader;


# static fields
.field private static final serialVersionUID:J = 0x759fac0f0cc76fd2L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Type"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    iput-object p2, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/MediaRange;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    return-object v0
.end method

.method public final encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encodeBody(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljavax/sip/header/ContentTypeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/sip/header/ContentTypeHeader;

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    :goto_0
    check-cast p1, Lgov/nist/javax/sip/header/ContentType;

    iget-object v3, p1, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v3, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final setContentSubType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null arg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null arg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
