.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;


# instance fields
.field public mLastStatus:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    const-string v2, "onMobileStatusChanged= updateTelephony="

    const-string v3, " mobileStatus="

    invoke-static {v2, v3, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    iget-object v2, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    aput-object p0, v2, v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x40

    iput v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    iget-object p0, v1, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iget-boolean v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iget-boolean v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iget-boolean v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iget v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iget-object v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object p2, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    :goto_0
    return-void
.end method
