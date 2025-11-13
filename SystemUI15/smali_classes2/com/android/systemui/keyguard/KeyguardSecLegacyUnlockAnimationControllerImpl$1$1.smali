.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    const-string v2, "KeyguardUnlock"

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "invalid leash"

    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->isLauncherActivity:Z

    if-eqz v1, :cond_2

    const v1, 0x3f6147ae    # 0.88f

    goto :goto_0

    :cond_2
    const v1, 0x3f733333    # 0.95f

    :goto_0
    add-float/2addr v1, p1

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLeashScale "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->applyTransaction()V

    return-void
.end method
