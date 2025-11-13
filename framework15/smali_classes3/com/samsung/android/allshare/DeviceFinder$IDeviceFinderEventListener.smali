.class public interface abstract Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
.super Ljava/lang/Object;
.source "DeviceFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/DeviceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDeviceFinderEventListener"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
.end method
