.class public final Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

.field public mPinned:Z

.field public final mUpdateSlice:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Landroidx/slice/SliceViewManagerWrapper;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceViewManagerWrapper;Landroid/net/Uri;Landroidx/slice/SliceViewManagerBase$1;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerWrapper;

    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    invoke-direct {p1, p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUpdateSlice:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    iput-object p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    return-void
.end method
