.class Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileReceiverImpl$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyCompleted"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/allshare/FileReceiverImpl$3;

    .line 544
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNotifyEvent(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "listener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 549
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 555
    .local v0, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v1, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "path":Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_URI_PATH"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "uriPath":Ljava/lang/String;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "errorStr":Ljava/lang/String;
    const-string v4, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "sessionId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 561
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    .line 565
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v8, "file":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 567
    .local v11, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    iget-object v5, v5, Lcom/samsung/android/allshare/FileReceiverImpl$3;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v6

    move-object v5, p1

    move-object v7, v4

    move-object v9, v11

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onCompleted(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    .line 568
    return-void
.end method
