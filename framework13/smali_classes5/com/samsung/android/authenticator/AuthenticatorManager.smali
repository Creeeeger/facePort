.class final Lcom/samsung/android/authenticator/AuthenticatorManager;
.super Ljava/lang/Object;
.source "AuthenticatorManager.java"


# static fields
.field private static final blacklist ASSET_TRUSTED_APP_HANDLE_BASE:I = 0xf4240

.field private static final blacklist ASSET_TRUSTED_APP_HANDLE_LIMIT:I = 0x1e847f

.field private static final blacklist FILE_TRUSTED_APP_HANDLE_BASE:I = 0x1e8480

.field private static final blacklist FILE_TRUSTED_APP_HANDLE_LIMIT:I = 0x2dc6bf

.field private static final blacklist MAX_TRUSTED_APP_HANDLE:I = 0xf423f

.field private static final blacklist TAG:Ljava/lang/String; = "AM"

.field private static blacklist sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;


# instance fields
.field private final blacklist mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/File;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0xf4240

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x1e8480

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    return-void
.end method

.method private blacklist getAssetTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5
    .param p1, "taHandle"    # I

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "matchedTa":Lcom/samsung/android/authenticator/TrustedApplication;
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 200
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/AssetFileDescriptor;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 201
    .local v3, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 202
    move-object v0, v3

    .line 203
    goto :goto_1

    .line 205
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/AssetFileDescriptor;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    .end local v3    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist getFileTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5
    .param p1, "taHandle"    # I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "matchedTa":Lcom/samsung/android/authenticator/TrustedApplication;
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 213
    .local v3, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 214
    move-object v0, v3

    .line 215
    goto :goto_1

    .line 217
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    .end local v3    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    :goto_1
    return-object v0
.end method

.method static declared-synchronized blacklist getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;
    .locals 2

    const-class v0, Lcom/samsung/android/authenticator/AuthenticatorManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/authenticator/AuthenticatorManager;

    invoke-direct {v1}, Lcom/samsung/android/authenticator/AuthenticatorManager;-><init>()V

    sput-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    .line 59
    :cond_0
    sget-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getReservedTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5
    .param p1, "taHandle"    # I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "matchedTa":Lcom/samsung/android/authenticator/TrustedApplication;
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 189
    .local v3, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 190
    move-object v0, v3

    .line 191
    goto :goto_1

    .line 193
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Lcom/samsung/android/authenticator/TrustedApplication;>;"
    .end local v3    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 2
    .param p1, "taHandle"    # I

    .line 246
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isReservedTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getReservedTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .local v0, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    goto :goto_0

    .line 248
    .end local v0    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isAssetTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getAssetTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .restart local v0    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    goto :goto_0

    .line 250
    .end local v0    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isFileTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getFileTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .line 256
    .restart local v0    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :goto_0
    return-object v0

    .line 253
    .end local v0    # "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    :cond_2
    const-string v0, "AM"

    const-string/jumbo v1, "taHandle is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist isAssetTrustedApplication(I)Z
    .locals 1
    .param p1, "taHandle"    # I

    .line 228
    const v0, 0xf4240

    if-gt v0, p1, :cond_0

    const v0, 0x1e847f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isFileTrustedApplication(I)Z
    .locals 1
    .param p1, "taHandle"    # I

    .line 232
    const v0, 0x1e8480

    if-gt v0, p1, :cond_0

    const v0, 0x2dc6bf

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isReservedTrustedApplication(I)Z
    .locals 1
    .param p1, "taHandle"    # I

    .line 222
    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v0}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 223
    invoke-virtual {v0}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 224
    invoke-virtual {v0}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 222
    :goto_1
    return v0
.end method

.method private blacklist makeAssetTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 9
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "file"    # Landroid/content/res/AssetFileDescriptor;

    .line 118
    new-instance v8, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;

    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 121
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 122
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 123
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;-><init>(ILcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)V

    .line 118
    return-object v8
.end method

.method private blacklist makeFileTrustedApplication(Ljava/io/File;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .line 147
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 153
    new-instance v0, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    sget-object v3, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    const-wide/16 v5, 0x0

    .line 158
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/authenticator/DownloadedTrustedApplication;-><init>(ILcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)V

    .line 153
    return-object v0

    .line 148
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "AM"

    const-string/jumbo v2, "open failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist makeReservedTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 89
    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorManager$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    const-string v0, "AM"

    const-string v1, "Not supported type"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_0
    new-instance v0, Lcom/samsung/android/authenticator/TadTrustedApplication;

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/TadTrustedApplication;-><init>(I)V

    return-object v0

    .line 93
    :pswitch_1
    new-instance v0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;-><init>(I)V

    return-object v0

    .line 91
    :pswitch_2
    new-instance v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method blacklist deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist execute(I[B)[B
    .locals 3
    .param p1, "taHandle"    # I
    .param p2, "command"    # [B

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .line 178
    .local v0, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-nez v0, :cond_0

    .line 179
    const-string v1, "AM"

    const-string/jumbo v2, "ta is not found"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 182
    :cond_0
    invoke-interface {v0, p2}, Lcom/samsung/android/authenticator/TrustedApplication;->execute([B)[B

    move-result-object v1

    return-object v1
.end method

.method blacklist getCommandVersion()I
    .locals 1

    .line 260
    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getVersion()I

    move-result v0

    return v0
.end method

.method blacklist getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-static {p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method blacklist load(Landroid/content/res/AssetFileDescriptor;)I
    .locals 2
    .param p1, "file"    # Landroid/content/res/AssetFileDescriptor;

    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v0, "AM"

    const-string v1, "file is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, -0x1

    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 109
    .local v0, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-nez v0, :cond_1

    .line 110
    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeAssetTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v1

    return v1
.end method

.method blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "file"    # Landroid/content/res/AssetFileDescriptor;

    .line 162
    const-string v0, "AM"

    if-nez p2, :cond_0

    .line 163
    const-string v1, "file is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 168
    .local v1, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-nez v1, :cond_1

    .line 169
    const-string/jumbo v2, "ta is null"

    invoke-static {v0, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeAssetTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v0

    return v0
.end method

.method blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 71
    const/4 v0, -0x1

    const-string v1, "AM"

    if-nez p1, :cond_0

    .line 72
    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 77
    .local v2, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-nez v2, :cond_2

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeReservedTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v2

    .line 79
    if-nez v2, :cond_1

    .line 80
    const-string v3, "mrta failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    invoke-interface {v2}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v0

    return v0
.end method

.method blacklist load(Ljava/io/File;)I
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 127
    const/4 v0, -0x1

    const-string v1, "AM"

    if-nez p1, :cond_0

    .line 128
    const-string v2, "file is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/authenticator/TrustedApplication;

    .line 133
    .local v2, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    if-nez v2, :cond_2

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeFileTrustedApplication(Ljava/io/File;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v2

    .line 135
    if-nez v2, :cond_1

    .line 136
    const-string v3, "mfta failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_2
    invoke-interface {v2}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v0

    return v0
.end method

.method blacklist readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 272
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist unload(I)Z
    .locals 4
    .param p1, "taHandle"    # I

    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    .line 237
    .local v0, "ta":Lcom/samsung/android/authenticator/TrustedApplication;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    const-string v2, "AM"

    const-string/jumbo v3, "ta is not found."

    invoke-static {v2, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v1

    .line 241
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/authenticator/TrustedApplication;->unload()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method blacklist writeFile(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 264
    invoke-static {p2, p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->writeFile([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
