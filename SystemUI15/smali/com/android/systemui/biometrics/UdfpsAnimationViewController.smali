.class public abstract Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public dialogAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

.field public final dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final dumpTag:Ljava/lang/String;

.field public notificationShadeVisible:Z

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/UdfpsAnimationView;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    new-instance p2, Landroid/graphics/PointF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mNotificationShadeVisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldPauseAuth()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPauseAuth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mDialogSuggestedAlpha:F

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dialogSuggestedAlpha="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    return-object p0
.end method

.method public final listenForShadeExpansion(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$listenForShadeExpansion$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$listenForShadeExpansion$2;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->setHandleTouches(Z)V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->setHandleTouches(Z)V

    return-void
.end method

.method public shouldPauseAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateAlpha()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    return-void
.end method

.method public final updatePauseAuth()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->setHandleTouches(Z)V

    :cond_0
    return-void
.end method
