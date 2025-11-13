.class public Lcom/android/keyguard/KeyguardMessageAreaController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardMessageAreaController$3;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMessageBiometricSource:Landroid/util/Pair;

.field public final mTextWatcher:Lcom/android/keyguard/KeyguardMessageAreaController$1;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardMessageArea;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mMessageBiometricSource:Landroid/util/Pair;

    new-instance p1, Lcom/android/keyguard/KeyguardMessageAreaController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController$1;-><init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mTextWatcher:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    new-instance p1, Lcom/android/keyguard/KeyguardMessageAreaController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController$2;-><init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p1, Lcom/android/keyguard/KeyguardMessageAreaController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageAreaController$3;-><init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationListener:Lcom/android/keyguard/KeyguardMessageAreaController$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance p1, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationListener:Lcom/android/keyguard/KeyguardMessageAreaController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mTextWatcher:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationListener:Lcom/android/keyguard/KeyguardMessageAreaController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mTextWatcher:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setIsVisible(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    :cond_0
    return-void
.end method

.method public final setMessage(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final setMessage$1(Ljava/lang/CharSequence;Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mMessageBiometricSource:Landroid/util/Pair;

    if-eqz v2, :cond_0

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v3, v4, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xdac

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skip showing face message \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardMessageAreaController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mMessageBiometricSource:Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final setNextMessageColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
