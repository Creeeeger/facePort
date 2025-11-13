.class public final Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$DataActivityListener;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onActiveDataSubscriptionIdChanged: subId="

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->updateDataSim()V

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 p0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onCarrierNetworkChange(Z)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onCarrierNetworkChange: active="

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-boolean p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p1, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onDataActivity(I)V
    .locals 5

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "onDataActivity: direction="

    invoke-static {p1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    iget-object v0, v0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-boolean v4, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    iput-boolean v3, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onDataConnectionStateChanged(II)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDataConnectionStateChanged: state="

    const-string v2, " type="

    invoke-static {p1, p2, v0, v2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput p1, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p1, p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayInfoChanged: telephonyDisplayInfo="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p1, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged voiceState="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dataState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p1, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "MobileStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {p1, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method
