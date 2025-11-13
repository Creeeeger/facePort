.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIsShowingRestart:Z

.field public mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field public mRestart:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

.field public mSnackbarContext:Landroid/content/Context;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createRestartDialog()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mRestart:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mIsShowingRestart:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mRestart:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->showRestartSnackbar(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mRestart:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final showRestartSnackbar(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mSnackbarContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "app"

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mSnackbarContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f130525

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, p1, v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mSnackbarContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$2;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$3;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->mIsShowingRestart:Z

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
