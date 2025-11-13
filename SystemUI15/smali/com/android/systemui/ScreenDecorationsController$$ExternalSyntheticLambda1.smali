.class public final synthetic Lcom/android/systemui/ScreenDecorationsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/ScreenDecorations;

    sget-boolean p0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    const-string v0, "ScreenDecorations"

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ScreenDecorations is disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p1, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p1, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iput-object p0, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p1}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda16;

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mCommandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v0, "screen-decor"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method
