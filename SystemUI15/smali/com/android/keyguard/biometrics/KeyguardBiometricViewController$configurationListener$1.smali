.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object p1, p1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initLockStarLockIcon$1(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout$3$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility$2()V

    :cond_1
    return-void
.end method
