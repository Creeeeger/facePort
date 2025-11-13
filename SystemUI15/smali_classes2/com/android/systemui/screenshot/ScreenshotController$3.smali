.class public final Lcom/android/systemui/screenshot/ScreenshotController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {v3}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->getScreenshotPreview()Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "screenshot_preview_image"

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/app/ActivityOptions;->startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/app/ActivityOptions;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/app/ExitTransitionCoordinator;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mActionIntentExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntentAsync(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;)V

    return-void
.end method

.method public final onTouchOutside()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v1, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
