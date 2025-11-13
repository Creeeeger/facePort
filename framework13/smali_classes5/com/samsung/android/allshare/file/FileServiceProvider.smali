.class public abstract Lcom/samsung/android/allshare/file/FileServiceProvider;
.super Lcom/samsung/android/allshare/ServiceProvider;
.source "FileServiceProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/allshare/file/FileServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/file/FileDeviceFinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getDeviceFinder()Lcom/samsung/android/allshare/file/FileDeviceFinder;
.end method
