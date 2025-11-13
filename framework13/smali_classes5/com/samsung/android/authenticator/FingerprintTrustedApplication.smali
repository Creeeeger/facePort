.class final Lcom/samsung/android/authenticator/FingerprintTrustedApplication;
.super Ljava/lang/Object;
.source "FingerprintTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field static final blacklist GET_AUTH_RESULT_COMMAND:[B

.field static final blacklist SET_AUTH_CHALLENGE_COMMAND:[B

.field private static final blacklist SUCCESS:[B

.field private static final blacklist TAG:Ljava/lang/String; = "FTA"


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    .line 29
    new-array v1, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    .line 31
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 4
    .param p1, "command"    # [B

    .line 46
    const/4 v0, 0x0

    const-string v1, "FTA"

    if-eqz p1, :cond_3

    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-array v0, v0, [B

    .line 52
    .local v0, "result":[B
    sget-object v2, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->setChallenge([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    sget-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    goto :goto_0

    .line 56
    :cond_1
    sget-object v2, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->getWrappedObject([B)[B

    move-result-object v0

    .line 59
    :cond_2
    :goto_0
    const-string v2, "command is not supported"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 47
    .end local v0    # "result":[B
    :cond_3
    :goto_1
    const-string v2, "command is invalid"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-array v0, v0, [B

    return-object v0
.end method

.method public blacklist getHandle()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method
