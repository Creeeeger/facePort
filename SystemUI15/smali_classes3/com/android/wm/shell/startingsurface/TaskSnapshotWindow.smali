.class public final Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public final mClearWindowHandler:Ljava/lang/Runnable;

.field public mHasDrawn:Z

.field public final mHasImeSurface:Z

.field public final mOrientationOnCreation:I

.field public final mSession:Landroid/view/IWindowSession;

.field public final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILjava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p5

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    new-instance v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-virtual {v1, p5}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput p3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mOrientationOnCreation:I

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasImeSurface:Z

    return-void
.end method
