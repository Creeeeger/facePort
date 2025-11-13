.class public Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.super Ljava/lang/Object;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;,
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.5"
.end annotation


# static fields
.field private static final blacklist PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist execute(I[B)[B
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCommandVersion()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getCommandVersion()I

    move-result v1

    return v1
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I

    move-result v1

    return v1
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v1

    return v1
.end method

.method public whitelist unload(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result v1

    return v1
.end method
