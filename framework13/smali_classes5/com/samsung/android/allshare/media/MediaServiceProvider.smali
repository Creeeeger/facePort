.class public abstract Lcom/samsung/android/allshare/media/MediaServiceProvider;
.super Lcom/samsung/android/allshare/ServiceProvider;
.source "MediaServiceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;
.end method
