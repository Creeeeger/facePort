.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataConnectionStateChanged(II)V
    .locals 6

    const-string/jumbo v0, "onDataConnectionStateChanged() : state ="

    const-string v1, " networkType = "

    const-string v2, "SecSimStatus"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    const v0, 0x7f141deb

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f141df4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f141dee

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f141dec

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f141ded

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "VPP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_5

    if-eq v5, v1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    iget-object p1, p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v0, "data_state"

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkType$1()V

    return-void
.end method

.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onDisplayInfoChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkType$1()V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onServiceStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    sget-boolean v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkProvider$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateServiceState$1(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateRoamingStatus$1(Landroid/telephony/ServiceState;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onSignalStrengthsChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method
