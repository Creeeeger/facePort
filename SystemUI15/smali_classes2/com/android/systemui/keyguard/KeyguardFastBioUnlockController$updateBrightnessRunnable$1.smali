.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public adjustedBrightness:F

.field public brightness:F

.field public displayState:I

.field public isAodBrightThanNormal:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->isAodBrightThanNormal:Z

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->displayState:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->brightness:F

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->adjustedBrightness:F

    iget-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onBrightnessChanged isAodBrighterThanNormal="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v2, v3, v1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p0, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " brightness="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " adjustedBrightness="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
