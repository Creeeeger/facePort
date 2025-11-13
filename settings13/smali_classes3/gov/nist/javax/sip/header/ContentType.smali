.class public Lgov/nist/javax/sip/header/ContentType;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ContentType.java"

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

    .line 79
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 206
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    .line 207
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/MediaRange;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->hasParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 213
    instance-of v0, p1, Ljavax/sip/header/ContentTypeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Ljavax/sip/header/ContentTypeHeader;

    .line 215
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/sip/header/MediaType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/sip/header/MediaType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 202
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null arg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 190
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null arg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
