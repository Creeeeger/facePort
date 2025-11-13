.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;


# instance fields
.field public final synthetic $desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$callback$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateDesktopStatusBarIcons()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->updateDeXWifiIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->updateDeXWifiIconModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    iget v2, v2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    iget v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$callback$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0, v1, v2, v0}, Lcom/android/systemui/util/DesktopManager;->setWifiIcon(ZII)V

    return-void
.end method
