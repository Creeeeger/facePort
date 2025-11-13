.class public interface abstract Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;
.super Ljava/lang/Object;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReceiverResponseListener"
.end annotation


# virtual methods
.method public abstract blacklist onCancelResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onReceiveResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
.end method
