.class public abstract Lcom/samsung/android/allshare/media/ImageViewer;
.super Lcom/samsung/android/allshare/Device;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;,
        Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;,
        Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
.end method

.method public abstract whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
.end method

.method public abstract whitelist getID()Ljava/lang/String;
.end method

.method public abstract whitelist getIPAddress()Ljava/lang/String;
.end method

.method public abstract whitelist getIcon()Landroid/net/Uri;
.end method

.method public abstract whitelist getModelName()Ljava/lang/String;
.end method

.method public abstract whitelist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getState()V
.end method

.method public abstract whitelist getViewerState()Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
.end method

.method public abstract blacklist isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist isSupportRedirect()Z
.end method

.method public abstract whitelist setEventListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;)V
.end method

.method public abstract whitelist setResponseListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V
.end method

.method public abstract whitelist show(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
.end method

.method public abstract whitelist stop()V
.end method

.method public abstract whitelist zoom(IIII)V
.end method
