.class Lcom/samsung/android/allshare/FileReceiverImpl$1;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;->cancel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

.field final synthetic blacklist val$sessionId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileReceiverImpl;

    .line 152
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    iput-object p2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v0

    .line 158
    .local v0, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v0, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null pointer Error!, sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileReceiverImpl"

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl$1;->val$sessionId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 172
    .end local v0    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .end local v1    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    :cond_1
    return-void
.end method
