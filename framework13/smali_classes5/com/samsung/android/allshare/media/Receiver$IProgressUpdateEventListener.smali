.class public interface abstract Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;
.super Ljava/lang/Object;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProgressUpdateEventListener"
.end annotation


# virtual methods
.method public abstract blacklist onCompleted(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract blacklist onProgressUpdated(JJLcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
.end method
