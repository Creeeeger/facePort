.class public abstract Lcom/samsung/android/allshare/file/FileReceiver;
.super Lcom/samsung/android/allshare/Device;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;,
        Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract blacklist cancel(Ljava/lang/String;)V
.end method

.method public abstract blacklist receive(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;",
            "Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;",
            ")V"
        }
    .end annotation
.end method
