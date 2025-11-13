.class final Lcom/samsung/android/authenticator/DownloadedTrustedApplication;
.super Ljava/lang/Object;
.source "DownloadedTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private final blacklist mHandle:I

.field private final blacklist mLen:J

.field private final blacklist mOffset:J

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;


# direct methods
.method constructor blacklist <init>(ILcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "offset"    # J
    .param p6, "len"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    .line 39
    iput-object p2, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 41
    iput-wide p4, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mOffset:J

    .line 42
    iput-wide p6, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mLen:J

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .locals 1
    .param p1, "command"    # [B

    .line 57
    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandle()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    iget-object v1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    iget-wide v2, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mOffset:J

    iget-wide v4, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mLen:J

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/authenticator/HalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tl failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, -0x1

    return v0

    .line 52
    :cond_0
    iget v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tu failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;->mType:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, -0x1

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
