.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->currentRotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->currentRotation:I

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method
