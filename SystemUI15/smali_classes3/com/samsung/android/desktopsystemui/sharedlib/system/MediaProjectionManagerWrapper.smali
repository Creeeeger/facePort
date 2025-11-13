.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]MediaProjectionManagerWrapper"

.field private static final mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {p1, p0, p2}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->mMediaProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {p1, p0}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    return-void
.end method
