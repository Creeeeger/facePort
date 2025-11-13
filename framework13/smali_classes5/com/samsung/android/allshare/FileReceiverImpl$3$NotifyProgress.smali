.class Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;
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
    name = "NotifyProgress"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/allshare/FileReceiverImpl$3;

    .line 518
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNotifyEvent(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "listener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 523
    move-object/from16 v0, p2

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 525
    .local v1, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v2, "BUNDLE_LONG_FILE_PROGRESS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 526
    .local v13, "progress":J
    const-string v2, "BUNDLE_LONG_FILE_SIZE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 527
    .local v15, "size":J
    const-string v2, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "path":Ljava/lang/String;
    const-string v3, "BUNDLE_STRING_URI_PATH"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 529
    .local v17, "uriPath":Ljava/lang/String;
    const-string v3, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 531
    .local v18, "sessionId":Ljava/lang/String;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 532
    .local v19, "errorStr":Ljava/lang/String;
    if-nez v19, :cond_0

    .line 533
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    goto :goto_0

    .line 535
    :cond_0
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v1

    .line 537
    :goto_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    .local v10, "file":Ljava/io/File;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 540
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v12, p0

    iget-object v3, v12, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;->this$1:Lcom/samsung/android/allshare/FileReceiverImpl$3;

    iget-object v3, v3, Lcom/samsung/android/allshare/FileReceiverImpl$3;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v4

    move-object/from16 v3, p1

    move-object/from16 v5, v18

    move-wide v6, v13

    move-wide v8, v15

    move-object/from16 v11, v20

    move-object v12, v1

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onProgressUpdated(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;JJLjava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    .line 541
    return-void
.end method
