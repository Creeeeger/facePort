.class public final Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mLoadedSlices:Ljava/util/Set;

.field public slicesReadyToLoad:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->slicesReadyToLoad:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final markSliceLoaded(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
