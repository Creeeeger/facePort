.class final Lcom/samsung/android/authenticator/TadTrustedApplication;
.super Ljava/lang/Object;
.source "TadTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TTA"


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 2
    .param p1, "command"    # [B

    .line 47
    const-string v0, "TTA"

    const-string/jumbo v1, "public byte[] execute(byte[] command)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandle()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .locals 8

    .line 36
    const-string v0, "TTA"

    const-string/jumbo v1, "public int load()"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/authenticator/HalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tl failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, -0x1

    return v0

    .line 42
    :cond_0
    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .locals 3

    .line 53
    const-string v0, "TTA"

    const-string/jumbo v1, "public int unload()"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-static {v1}, Lcom/samsung/android/authenticator/HalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tu failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
