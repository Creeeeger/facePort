.class public Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.super Ljava/lang/Object;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;,
        Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    }
.end annotation


# static fields
.field private static final blacklist PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist execute(I[B)[B
    .locals 2
    .param p1, "taHandle"    # I
    .param p2, "command"    # [B

    .line 140
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 141
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCommandVersion()I
    .locals 2

    .line 177
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 178
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getCommandVersion()I

    move-result v1

    return v1
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "file"    # Landroid/content/res/AssetFileDescriptor;

    .line 114
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 115
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I

    move-result v1

    return v1
.end method

.method public whitelist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 94
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 95
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v1

    return v1
.end method

.method public whitelist unload(I)Z
    .locals 2
    .param p1, "taHandle"    # I

    .line 161
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    .line 162
    .local v0, "manager":Lcom/samsung/android/authenticator/AuthenticatorManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result v1

    return v1
.end method
