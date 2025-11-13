.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->needsToChangeRetryButton()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->enableSecurityDebug()V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    :cond_2
    return-void
.end method
