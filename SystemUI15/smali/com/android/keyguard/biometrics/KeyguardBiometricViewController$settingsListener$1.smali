.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    sget p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean p1, v0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void
.end method
