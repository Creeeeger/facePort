.class Lcom/android/settings/network/AirplaneModePreferenceController$1;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/AirplaneModePreferenceController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings/network/AirplaneModePreferenceController;I)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    iput p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->val$slotId:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 245
    invoke-static {}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmServiceState(Lcom/android/settings/network/AirplaneModePreferenceController;)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmServiceState(Lcom/android/settings/network/AirplaneModePreferenceController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->val$slotId:I

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmSupportCellularVoice(Lcom/android/settings/network/AirplaneModePreferenceController;)Z

    move-result v0

    .line 250
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmServiceState(Lcom/android/settings/network/AirplaneModePreferenceController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->val$slotId:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    aput v3, v0, v1

    .line 252
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fputmSupportCellularVoice(Lcom/android/settings/network/AirplaneModePreferenceController;Z)V

    .line 253
    invoke-static {}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSS("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->val$slotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cellularVoice "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmSupportCellularVoice(Lcom/android/settings/network/AirplaneModePreferenceController;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmAirplaneModePreference(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmAirplaneModePreference(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 259
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->-$$Nest$fgetmAirplaneModePreference(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_2
    return-void
.end method
