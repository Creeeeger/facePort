.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getMView$p$s1571510355(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mCurrentRotation:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetLockIconState()V

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;

    invoke-direct {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method
