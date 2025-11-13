.class Lcom/samsung/android/allshare/DeviceImpl$1;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "DeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/DeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/DeviceImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/DeviceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/DeviceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl$1;->this$0:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 70
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "actionID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 73
    .local v1, "resBundle":Landroid/os/Bundle;
    const-string v2, "DeviceImpl"

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v3, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 79
    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v4, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "errorStr":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 81
    invoke-static {v4}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 84
    :cond_1
    const-string v5, "com.sec.android.allshare.action.ACTION_REQUEST_MOBILE_TO_TV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    const-string v5, "handleResponseMessage : actionID :ACTION_REQUEST_MOBILE_TO_TV response SUCCESS"

    invoke-static {v2, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    return-void

    .line 74
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v4    # "errorStr":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v3, "handleResponseMessage : actionID == null || resBundle == null"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
