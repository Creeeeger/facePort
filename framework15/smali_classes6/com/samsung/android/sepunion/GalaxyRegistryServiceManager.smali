.class public Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;
.super Ljava/lang/Object;
.source "GalaxyRegistryServiceManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IGalaxyRegistryService;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mContext:Landroid/content/Context;

    const-string v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "galaxyregistry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sepunion/IGalaxyRegistryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    return-object v0
.end method
