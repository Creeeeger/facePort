.class public final synthetic Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const-string p1, "BioUnlock"

    const-string v1, "onWindowVisibilityChanged keyguardGoingAway"

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

    :cond_1
    return-void
.end method
