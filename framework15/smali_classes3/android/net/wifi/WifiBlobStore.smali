.class public Landroid/net/wifi/WifiBlobStore;
.super Lcom/android/internal/net/ConnectivityBlobStore;
.source "WifiBlobStore.java"


# static fields
.field private static final blacklist DB_NAME:Ljava/lang/String; = "WifiBlobStore.db"

.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiBlobStore"

.field private static blacklist sInstance:Landroid/net/wifi/WifiBlobStore;

.field private static final blacklist sIsVendorApiLevelGreaterThanT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->isVendorApiLevelGreaterThanT()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    const-string v0, "WifiBlobStore.db"

    invoke-direct {p0, v0}, Lcom/android/internal/net/ConnectivityBlobStore;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getInstance()Landroid/net/wifi/WifiBlobStore;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiBlobStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiBlobStore;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    :cond_0
    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    return-object v0
.end method

.method public static blacklist getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;
    .locals 1

    nop

    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isVendorApiLevelGreaterThanT()Z
    .locals 10

    const/16 v0, 0x21

    const-string/jumbo v1, "ro.board.first_api_level"

    const-string/jumbo v2, "ro.vndk.version"

    const-string/jumbo v3, "ro.board.api_level"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "WifiBlobStore"

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved API level property, value="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v9, v0, :cond_0

    move v3, v6

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "No API level properties are defined"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public static blacklist supplicantCanAccessBlobstore()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return v0
.end method
