.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    :cond_0
    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initLockStarLockIcon$1(Z)V

    return-void
.end method
