.class public final Lcom/android/systemui/accessibility/FullscreenMagnificationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$2;->this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$2;->this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mRotationWatcher:Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FullscreenMagnificationController"

    const-string p2, "Failed to remove rotation watcher"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
