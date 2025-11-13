.class public Lcom/samsung/android/sepunion/TipsManager;
.super Ljava/lang/Object;
.source "TipsManager.java"


# static fields
.field public static final blacklist FOTA_READY_ACTION:Ljava/lang/String; = "android.samsung.tips.FOTA_READY"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/ITipsManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/samsung/android/sepunion/TipsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/TipsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/sepunion/TipsManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/ITipsManager;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sepunion/TipsManager;->mService:Lcom/samsung/android/sepunion/ITipsManager;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sepunion/TipsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 32
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string/jumbo v1, "tips"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 33
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/sepunion/ITipsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/ITipsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sepunion/TipsManager;->mService:Lcom/samsung/android/sepunion/ITipsManager;

    .line 35
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sepunion/TipsManager;->mService:Lcom/samsung/android/sepunion/ITipsManager;

    return-object v0
.end method
