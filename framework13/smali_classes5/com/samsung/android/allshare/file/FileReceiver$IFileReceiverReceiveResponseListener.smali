.class public interface abstract Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
.super Ljava/lang/Object;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/file/FileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileReceiverReceiveResponseListener"
.end annotation


# virtual methods
.method public abstract blacklist onCancelResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onReceiveResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/file/FileReceiver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
