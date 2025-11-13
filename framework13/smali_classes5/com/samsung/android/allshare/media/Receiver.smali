.class public abstract Lcom/samsung/android/allshare/media/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;,
        Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public abstract blacklist cancel(Lcom/samsung/android/allshare/Item;)V
.end method

.method public abstract blacklist receive(Lcom/samsung/android/allshare/Item;)V
.end method

.method public abstract blacklist setProgressUpdateEventListener(Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;)V
.end method

.method public abstract blacklist setReceiverResponseListener(Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;)V
.end method
