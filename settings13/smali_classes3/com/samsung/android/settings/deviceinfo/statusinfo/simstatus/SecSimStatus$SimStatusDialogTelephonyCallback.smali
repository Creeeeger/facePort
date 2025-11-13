.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SecSimStatus.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimStatusDialogTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged() : state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecSimStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateDataState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    .line 550
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateNetworkType(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "onDisplayInfoChanged()"

    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fputmTelephonyDisplayInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/TelephonyDisplayInfo;)V

    .line 572
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateNetworkType(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "onServiceStateChanged()"

    .line 561
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateNetworkProvider(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateServiceState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateRoamingStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V

    .line 565
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fputmPreviousServiceState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "onSignalStrengthsChanged()"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateSignalStrength(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/SignalStrength;)V

    return-void
.end method
