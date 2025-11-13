.class final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;

.field final synthetic $desktopManager:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;->$callback:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModelKt;->DEFAULT_DEX_STATUS_BAR_WIFI_ICON_MODEL:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    iget v3, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/util/DesktopManager;->setWifiIcon(ZII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$DeXWifiIcon$1$1;->$callback:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->removeDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
