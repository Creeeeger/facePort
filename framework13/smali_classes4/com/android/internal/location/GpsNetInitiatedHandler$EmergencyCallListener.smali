.class Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "GpsNetInitiatedHandler.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$PreciseCallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .line 195
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "GpsNetInitiatedHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged(): state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 198
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    goto/16 :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 211
    const-string v0, "emergency mode is off."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto :goto_0

    .line 221
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 222
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 223
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v3, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v3, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 226
    const-string v2, "emergency mode is on."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 232
    :cond_5
    :goto_0
    return-void
.end method

.method public whitelist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 182
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 184
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOutgoingEmergencyCall(): inEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 190
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 5
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 238
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    .line 240
    .local v0, "fgCallState":I
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    const-string v2, "GpsNetInitiatedHandler"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreciseCallStateChanged. fgCallState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$misEmergencyCallActive(Lcom/android/internal/location/GpsNetInitiatedHandler;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 244
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Emergency call is ACTIVE."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    const-string v1, "emergency mode is on."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 251
    .end local v0    # "fgCallState":I
    :cond_2
    return-void
.end method
