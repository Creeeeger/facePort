.class Lcom/samsung/android/allshare/FileReceiverImpl$4;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileReceiverImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileReceiverImpl;

    .line 590
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCompleted(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
    .locals 10
    .param p1, "receiver"    # Lcom/samsung/android/allshare/file/FileReceiver;
    .param p2, "sessionID"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 652
    const-string v0, "FileReceiverImpl"

    const-string v1, "onCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v1, 0x0

    .line 656
    .local v1, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v2, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v2

    .line 657
    .local v2, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v2, :cond_0

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null pointer Error!, sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void

    .line 662
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v1

    .line 665
    if-eqz v1, :cond_1

    .line 666
    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onCompleted(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 668
    :cond_1
    const-string v3, "onCompleted listener is null!"

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->completed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All of FileTransfer was completed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 677
    :cond_2
    return-void
.end method

.method public blacklist onFailed(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
    .locals 10
    .param p1, "receiver"    # Lcom/samsung/android/allshare/file/FileReceiver;
    .param p2, "sessionID"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 620
    const-string v0, "FileReceiverImpl"

    const-string v1, "onFailed()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x0

    .line 624
    .local v1, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v2, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v2

    .line 625
    .local v2, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v2, :cond_0

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null pointer Error!, sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    .line 631
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_1

    .line 635
    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onFailed(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 637
    :cond_1
    const-string v3, "onFailed listener is null!"

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$misCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mreleaseCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)V

    goto :goto_1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$misCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 648
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist onProgressUpdated(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;JJLjava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V
    .locals 14
    .param p1, "receiver"    # Lcom/samsung/android/allshare/file/FileReceiver;
    .param p2, "sessionID"    # Ljava/lang/String;
    .param p3, "receivedSize"    # J
    .param p5, "totalSize"    # J
    .param p7, "file"    # Ljava/io/File;
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "err"    # Lcom/samsung/android/allshare/ERROR;

    .line 595
    move-object/from16 v10, p2

    const-string v0, "FileReceiverImpl"

    const-string v1, "onProgressUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    .line 600
    .local v1, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    move-object v11, p0

    iget-object v2, v11, Lcom/samsung/android/allshare/FileReceiverImpl$4;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v2, v10}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v12

    .line 602
    .local v12, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v12, :cond_0

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null pointer Error!, sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void

    .line 608
    :cond_0
    invoke-virtual {v12}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v13

    .line 611
    .end local v1    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .local v13, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    if-eqz v13, :cond_1

    .line 612
    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;->onProgressUpdated(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;JJLjava/io/File;Landroid/net/Uri;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 614
    :cond_1
    const-string v1, "onProgressUpdated listener is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void
.end method
