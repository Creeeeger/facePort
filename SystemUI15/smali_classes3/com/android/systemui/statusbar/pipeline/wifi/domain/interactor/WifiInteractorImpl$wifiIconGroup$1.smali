.class final Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->Z$0:Z

    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v1, "get wifiIconGroup ePDGConnected : "

    const-string v3, "WifiInteractor"

    invoke-static {v1, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->FIVEG:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->wifiNetworkType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_5:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->SIXG:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->SIXGE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;->SEVENG:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$WifiNetworkType;

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_WIFI_CALLING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0, v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iput-object v2, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    :cond_5
    move-object v2, p1

    :cond_6
    return-object v2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
