.class public final Lcom/android/app/viewcapture/ViewCapture$WindowListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

.field public mFrameIndexBg:I

.field public mFrameTimesNanosBg:[J

.field public mIsActive:Z

.field public mIsFirstFrame:Z

.field public mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

.field public mRoot:Landroid/view/View;

.field public final mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public final name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/app/viewcapture/ViewCapture;


# direct methods
.method public constructor <init>(Lcom/android/app/viewcapture/ViewCapture;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    iget p1, p1, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    new-array v1, p1, [J

    iput-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    new-array p1, p1, [Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsActive:Z

    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    iput-object p3, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;
    .locals 4

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object v3, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    invoke-direct {v1, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    :goto_0
    iput-object p1, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    iput-object v1, p2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget p1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, -0x7fe00000

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    neg-int p0, p0

    iput p0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    iput v2, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    return-object v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onDraw()V
    .locals 3

    const-string/jumbo v0, "vc#onDraw"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    invoke-virtual {p0, v0, v1}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object v0, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->elapsedRealtimeNanos:J

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget-object v1, v1, Lcom/android/app/viewcapture/ViewCapture;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->onTrimMemory(I)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsActive:Z

    iget-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    :cond_2
    return-void
.end method
