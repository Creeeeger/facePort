.class final Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;
.super Ljava/lang/Object;
.source "DeviceRootKeyTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DRTA"


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 1
    .param p1, "command"    # [B

    .line 44
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getDrkKeyHandle()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandle()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .locals 2

    .line 34
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->initializeDrk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "DRTA"

    const-string v1, "id failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    iget v0, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .locals 2

    .line 49
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->terminateDrk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "DRTA"

    const-string/jumbo v1, "td failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, -0x1

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
