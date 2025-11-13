.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotEnablingActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 6

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoHotspot onStateChanged() - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_ap_can_not_turn_on_auto_hotspot_for_suggestion_tip_card:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 31
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_TETHERING_RESTRICTED"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    .line 37
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AutoHotspot feature can`t be used: RESULT_ERROR_AIRPLANE_MODE_ON"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 43
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_SIM"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 49
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_ACTIVE_NETWORK"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 55
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_DISABLED_NEARBY_SCANNING"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_ACCOUNT"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_DEFAULT_PASSWORD"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_6
    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot feature can be used: RESULT_OK"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    return-void

    .line 78
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AutoHotspot feature can`t be used: NO MATCHING RESULT"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    invoke-static {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void
.end method
