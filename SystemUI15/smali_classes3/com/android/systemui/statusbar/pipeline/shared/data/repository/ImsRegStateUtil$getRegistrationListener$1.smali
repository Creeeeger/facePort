.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $slotId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p2

    const/16 v0, 0xf

    const-string v1, "onDeregistered["

    const-string v2, "ImsRegStateUtil"

    if-ne p2, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string p1, "]: TYPE_MOBILE_EMERGENCY"

    invoke-static {p0, v1, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "mmtel"

    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string p2, "]: voice profiles are disconnected"

    invoke-static {p1, v1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string p2, "]: VoWifi is disconnected"

    invoke-static {p1, v1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string p2, "]: is not MMTEL_VOICE"

    invoke-static {p1, v1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p2, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStateChangedCallbacks:Ljava/util/List;

    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->copy$default(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;->onImsRegStateChanged(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v1, 0xf

    const-string v2, "onRegistered["

    const-string v3, "ImsRegStateUtil"

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string p1, "]: TYPE_MOBILE_EMERGENCY"

    invoke-static {p0, v2, p1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xb

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v1

    const-string v5, "]: MMTEL_VOICE. network type="

    invoke-static {v0, v1, v2, v5, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string v1, "]: VoWifi is connected"

    invoke-static {v0, v2, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string v1, "]: VoWifi is disconnected"

    invoke-static {v0, v2, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    const-string v1, "]: is not MMTEL_VOICE"

    invoke-static {v0, v2, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_WIFI_CALLING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    iget v5, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v5, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    const-string v1, "]: ePDGStatus="

    invoke-static {v2, p1, v1, v0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStateChangedCallbacks:Ljava/util/List;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->copy$default(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;->onImsRegStateChanged(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)V

    goto :goto_2

    :cond_7
    return-void
.end method
