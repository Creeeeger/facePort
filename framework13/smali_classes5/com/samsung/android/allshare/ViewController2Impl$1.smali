.class Lcom/samsung/android/allshare/ViewController2Impl$1;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "ViewController2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewController2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewController2Impl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewController2Impl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewController2Impl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 158
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 8
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 162
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "actionID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 165
    .local v1, "resBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v2}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewController2Impl;)Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 169
    .local v2, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "errorStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 171
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v2

    .line 174
    :cond_1
    const/4 v4, 0x0

    .line 175
    .local v4, "portNum":I
    const-string v5, "com.sec.android.allshare.action.ACTION_VIEWCONTROLLER_REQUEST_GET_ZOOM_PORT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 176
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, v5}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    const-string v5, "BUNDLE_INT_ZOOM_PORT_NUMBER"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZoomPort : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ViewController2Impl"

    invoke-static {v7, v5}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v5}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewController2Impl;)Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-interface {v5, v6, v2}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    .line 182
    return-void

    .line 186
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v5}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fgetmIPAddress(Lcom/samsung/android/allshare/ViewController2Impl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v4}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$mconnect(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/lang/String;I)Z

    move-result v5

    if-ne v5, v6, :cond_4

    .line 187
    iget-object v5, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v5}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewController2Impl;)Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    .line 188
    invoke-interface {v5, v6, v7}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v5}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewController2Impl;)Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/allshare/ViewController2Impl$1;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/allshare/media/ViewController2$IViewController2ResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController2;Lcom/samsung/android/allshare/ERROR;)V

    .line 192
    :goto_1
    return-void

    .line 166
    .end local v2    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v3    # "errorStr":Ljava/lang/String;
    .end local v4    # "portNum":I
    :cond_5
    :goto_2
    return-void
.end method
