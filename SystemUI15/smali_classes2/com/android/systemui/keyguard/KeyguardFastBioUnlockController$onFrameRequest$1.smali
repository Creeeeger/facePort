.class final synthetic Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameRequest$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const-string v5, "onFrameCommit()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "onFrameCommit"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onFrameCommit"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    const/16 v1, 0x2710

    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->viewMediatorHelperLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onForegroundShown()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
