.class Lcom/android/settings/network/apn/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRestoreDefaultApnMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", intent.getAction() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ss"

    .line 273
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_3

    .line 276
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Due to SIM absent, closes APN settings page"

    .line 277
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 280
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const-string v3, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 285
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 287
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCurrentSIMSlot(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result v2

    .line 289
    invoke-static {p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result p1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p1

    if-eq p2, p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmSubId(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 295
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mgetSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)V

    .line 297
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mgetSimSlotNum(Lcom/android/settings/network/apn/ApnSettings;)V

    .line 298
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mgetMccMnc(Lcom/android/settings/network/apn/ApnSettings;)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mrestartPhoneStateListener(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED id : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", info : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    :cond_3
    :goto_0
    const-string p1, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 309
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 310
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    goto :goto_1

    .line 312
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->showDialog(I)V

    :cond_6
    :goto_1
    const-string p1, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 316
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 317
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;)Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    move-result-object p1

    const/4 p2, 0x2

    if-nez p1, :cond_7

    .line 318
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler-IA;)V

    invoke-static {p1, v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;)V

    goto :goto_2

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;)Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    :goto_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;)Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void
.end method
