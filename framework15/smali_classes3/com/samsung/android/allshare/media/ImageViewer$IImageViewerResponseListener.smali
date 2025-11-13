.class public interface abstract Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;
.super Ljava/lang/Object;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageViewerResponseListener"
.end annotation


# virtual methods
.method public abstract onGetStateResponseReceived(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
