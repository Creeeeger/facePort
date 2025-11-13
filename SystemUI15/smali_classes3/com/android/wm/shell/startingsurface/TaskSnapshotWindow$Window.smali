.class public final Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;
.super Lcom/android/internal/view/BaseIWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mOuter:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window$$ExternalSyntheticLambda0;-><init>(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
