.class Lcom/android/systemui/util/DesktopManagerImpl$3;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_5

    const/high16 p1, 0x30000

    if-eq v0, p1, :cond_3

    const/high16 p1, 0x70000

    if-eq v0, p1, :cond_2

    const/high16 p1, 0x80000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x90000

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$mhandleNotifyPrivacyItemStateRequested(Lcom/android/systemui/util/DesktopManagerImpl;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmDesktopStatusBarIconCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmDesktopStatusBarIconCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;->updateDesktopStatusBarIcons()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmSecDeviceControlsController(Lcom/android/systemui/util/DesktopManagerImpl;)Ldagger/Lazy;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmSecDeviceControlsController(Lcom/android/systemui/util/DesktopManagerImpl;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->start(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmDesktopBluetoothCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmDesktopBluetoothCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_4
    const-string v1, "list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/DesktopManager;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmKeyguardViewControllerLazy(Lcom/android/systemui/util/DesktopManagerImpl;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->requestUnlock(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
