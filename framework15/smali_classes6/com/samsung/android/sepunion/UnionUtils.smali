.class public Lcom/samsung/android/sepunion/UnionUtils;
.super Ljava/lang/Object;
.source "UnionUtils.java"


# static fields
.field public static blacklist FEATURE_ENABLED:Z = false

.field private static final blacklist FEATURE_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication"

.field private static final blacklist FEATURE_USB_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.usb_authentication"

.field private static blacklist sInstance:Lcom/samsung/android/sepunion/UnionUtils;


# instance fields
.field private blacklist mIsCoverSupported:Z

.field private blacklist mIsNfcAuthEnabled:Z

.field private blacklist mIsUsbAuthEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsNfcAuthEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsUsbAuthEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsCoverSupported:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sepunion/UnionUtils;->updateSystemFeature(Landroid/content/Context;)V

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/sepunion/UnionUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sepunion/UnionUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/UnionUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/sepunion/UnionUtils;->sInstance:Lcom/samsung/android/sepunion/UnionUtils;

    return-object v0
.end method

.method private blacklist updateSystemFeature(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsNfcAuthEnabled:Z

    const-string v1, "com.sec.feature.usb_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsUsbAuthEnabled:Z

    const-string v1, "com.sec.feature.cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsCoverSupported:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist isCoverSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsCoverSupported:Z

    return v0
.end method

.method public blacklist isNfcAuthEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsNfcAuthEnabled:Z

    return v0
.end method

.method public blacklist isUsbAuthEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sepunion/UnionUtils;->mIsUsbAuthEnabled:Z

    return v0
.end method
