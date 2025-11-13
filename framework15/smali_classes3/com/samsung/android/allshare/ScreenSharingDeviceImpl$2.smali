.class Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "ScreenSharingDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 9

    const-string v0, "ScreenSharingDeviceImpl"

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->-$$Nest$fgetmActionResponseListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_MOBILE_TO_TV"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "BUNDLE_STRING_SCREENSHARING_TV_LISTENFREQ"

    const-string v6, "BUNDLE_STRING_SCREENSHARING_TV_WLANFREQ"

    const-string v7, "BUNDLE_STRING_SCREENSHARING_TV_BSSID"

    if-eqz v4, :cond_1

    :try_start_1
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    nop

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "handleResponseMessage : actionID :ACTION_CONNECT_SCREENSHARING_MOBILE_TO_TV response SUCCESS"

    invoke-static {v0, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->-$$Nest$fgetmActionResponseListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    move-result-object v7

    invoke-interface {v7, v4, v6, v5}, Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;->onConnectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_TV_TO_MOBILE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    nop

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BUNDLE_STRING_SCREENSHARING_TV_WFDSOURCEPORT"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleResponseMessage : actionID :ACTION_CONNECT_SCREENSHARING_TV_TO_MOBILE response SUCCESS"

    invoke-static {v0, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-static {v8}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->-$$Nest$fgetmActionResponseListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    move-result-object v8

    invoke-interface {v8, v4, v6, v5, v7}, Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;->onConnectScreenSharingTV2M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "mAllShareRespHandler.handleResponseMessage Error"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v5, "mAllShareRespHandler.handleResponseMessage Exception"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    nop

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method
