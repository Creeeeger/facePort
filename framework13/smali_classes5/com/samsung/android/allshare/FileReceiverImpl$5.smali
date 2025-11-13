.class Lcom/samsung/android/allshare/FileReceiverImpl$5;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;->receive(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

.field final synthetic blacklist val$responseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

.field final synthetic blacklist val$senderName:Ljava/lang/String;

.field final synthetic blacklist val$urilist:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileReceiverImpl;

    .line 690
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    iput-object p2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$responseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    iput-object p3, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$urilist:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$senderName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 693
    const-string v0, "FileReceiverImpl"

    const-string v1, "mRespHandler.postDelayed.mReceiveResponseListener.onReceiveResponseReceived() called.."

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$responseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$urilist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/allshare/FileReceiverImpl$5;->val$senderName:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    const-string v4, ""

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 697
    return-void
.end method
