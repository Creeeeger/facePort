.class public interface abstract Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;
.super Ljava/lang/Object;
.source "ISemWifiApDataUsageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;,
        Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ISemWifiApDataUsageCallback"


# virtual methods
.method public abstract blacklist onDataUsageChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
