.class public final Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mDisplayId:I

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mOperatorNameView:Landroid/view/View;

.field public final mPhoneStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;Landroid/view/View;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Lcom/android/systemui/navigationbar/NavigationBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mOperatorNameView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mPhoneStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iput p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "bars"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "clock"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "operator"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string v0, "clock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    instance-of v1, v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    const-string v0, "operator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mOperatorNameView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    const-string v0, "bars"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "mode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "opaque"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "translucent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "semi-transparent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    const-string/jumbo p2, "transparent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo p2, "warning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x5

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    if-eq p1, v0, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mPhoneStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDisplayId:I

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->transitionTo(II)V

    :cond_7
    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    instance-of v1, v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {v0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->onDemoModeFinished()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mOperatorNameView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {p0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->onDemoModeFinished()V

    :cond_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method
