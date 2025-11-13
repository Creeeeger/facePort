.class Lcom/android/internal/location/GpsNetInitiatedHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 254
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "GpsNetInitiatedHandler"

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 264
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 266
    const-string v1, "emergency mode is on because ECBM is on."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto/16 :goto_1

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 272
    const-string v1, "emergency mode is off because ECBM is off"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto/16 :goto_1

    .line 277
    :cond_3
    const-string v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    const-string v1, "EXTRA_TEL_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "phoneNumber":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 281
    const-string v6, "EXTRA_CALL_EVENT"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 282
    .local v6, "callState":I
    if-ne v6, v2, :cond_8

    .line 283
    iget-object v7, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v7

    if-lez v7, :cond_4

    .line 284
    iget-object v7, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7, v8}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v2

    if-nez v2, :cond_7

    .line 287
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "emergency call is disconnected"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 292
    const-string v2, "emergency mode is off."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto :goto_0

    .line 296
    :cond_6
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V

    goto :goto_0

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v2

    if-lez v2, :cond_9

    .line 299
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "additional emergency call is disconnected, the number of remaining call is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_8
    const/4 v3, 0x2

    if-ne v6, v3, :cond_9

    .line 302
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->-$$Nest$fputmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v6    # "callState":I
    :cond_9
    :goto_0
    goto :goto_1

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SystemEmergencyHelper"

    const-string v4, "isEmergencyNumber throws IllegalStateException:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_a
    :goto_1
    return-void
.end method
