.class public final Lgov/nist/javax/sip/address/UserInfo;
.super Lgov/nist/javax/sip/address/NetObject;
.source "UserInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x64df3b126d0c8190L


# instance fields
.field protected password:Ljava/lang/String;

.field protected user:Ljava/lang/String;

.field protected userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 79
    const-class v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 82
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/address/UserInfo;

    .line 83
    iget v0, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    iget v1, p1, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    if-eq v0, v1, :cond_1

    return v2

    .line 86
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    iget-object v1, p1, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 89
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object v0, p1, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v0, :cond_3

    return v2

    .line 92
    :cond_3
    iget-object p1, p1, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-nez p0, :cond_4

    return v2

    :cond_4
    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "#"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 158
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 160
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    :goto_0
    return-void
.end method

.method public setUserType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_1
    :goto_0
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    return-void
.end method
