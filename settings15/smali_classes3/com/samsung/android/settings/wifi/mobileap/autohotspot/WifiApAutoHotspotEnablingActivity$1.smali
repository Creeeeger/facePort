.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 4

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->$r8$clinit:I

    const-string v0, "AutoHotspot onStateChanged() - resultCode: "

    const-string v1, "WifiApAutoHotspotEnablingActivity"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1433fe

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1432e6

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_TETHERING_RESTRICTED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_AIRPLANE_MODE_ON"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_SIM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_ACTIVE_NETWORK"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_DISABLED_NEARBY_SCANNING"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_ACCOUNT"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    const-string p1, "AutoHotspot feature can`t be used: RESULT_ERROR_DEFAULT_PASSWORD"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void

    :cond_6
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    const-string p1, "AutoHotspot feature can be used: RESULT_OK"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    return-void

    :cond_7
    const-string p1, "AutoHotspot feature can`t be used: NO MATCHING RESULT"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->-$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V

    return-void
.end method
