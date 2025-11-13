.class final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->waitStartTime:J

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameRequest$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameRequest$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/keyguard/VisibilityController;->registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameRequest$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameRequest$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    const/16 v1, 0x2710

    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFrameRequest displayState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/keyguard/VisibilityController;->invalidate()V

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
