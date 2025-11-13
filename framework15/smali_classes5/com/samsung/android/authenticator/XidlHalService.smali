.class interface abstract Lcom/samsung/android/authenticator/XidlHalService;
.super Ljava/lang/Object;
.source "XidlHalService.java"


# direct methods
.method public static blacklist makeHalService()Lcom/samsung/android/authenticator/XidlHalService;
    .locals 2

    new-instance v0, Lcom/samsung/android/authenticator/AidlHalService;

    invoke-direct {v0}, Lcom/samsung/android/authenticator/AidlHalService;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AidlHalService;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/authenticator/HidlHalService;

    invoke-direct {v1}, Lcom/samsung/android/authenticator/HidlHalService;-><init>()V

    return-object v1
.end method


# virtual methods
.method public abstract blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
.end method

.method public abstract blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
.end method

.method public abstract blacklist isAvailable()Z
.end method

.method public abstract blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
.end method

.method public abstract blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
.end method
