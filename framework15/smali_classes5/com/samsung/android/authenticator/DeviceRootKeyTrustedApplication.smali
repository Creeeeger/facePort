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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getDrkKeyHandle()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->initializeDrk()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DRTA"

    const-string/jumbo v1, "id failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->terminateDrk()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DRTA"

    const-string/jumbo v1, "td failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
