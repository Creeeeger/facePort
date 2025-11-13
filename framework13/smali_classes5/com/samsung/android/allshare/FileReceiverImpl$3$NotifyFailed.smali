.class Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;
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
    name = "NotifyFailed"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/allshare/FileReceiverImpl$3;

    .line 571
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNotifyEvent(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "listener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 576
    const-string v0, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "path":Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_URI_PATH"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "uriPath":Ljava/lang/String;
    const-string v2, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "errStr":Ljava/lang/String;
    const-string v3, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v7, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 583
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v11

    .line 585
    .local v11, "err":Lcom/samsung/android/allshare/ERROR;
    iget-object v4, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    iget-object v4, v4, Lcom/samsung/android/allshare/FileReceiverImpl$3;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v5

    move-object v4, p1

    move-object v6, v3

    move-object v8, v10

    move-object v9, v11

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onFailed(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    .line 586
    return-void
.end method
