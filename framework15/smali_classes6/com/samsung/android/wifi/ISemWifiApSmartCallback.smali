.class public interface abstract Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
.super Ljava/lang/Object;
.source "ISemWifiApSmartCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;,
        Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ISemWifiApSmartCallback"


# virtual methods
.method public abstract blacklist onStateChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
