.class public final Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mCallbacks:Ljava/util/HashSet;

.field public final mEventListeners:Ljava/util/HashSet;

.field public final mGestureListeners:Ljava/util/HashSet;

.field public final mPredecessor:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

.field public final mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public static -$$Nest$monRemoved(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambient/touch/TouchHandler$TouchSession$Callback;

    invoke-interface {v0}, Lcom/android/systemui/ambient/touch/TouchHandler$TouchSession$Callback;->onRemoved()V

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;Landroid/graphics/Rect;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mCallbacks:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mPredecessor:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final pop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    return-void
.end method
