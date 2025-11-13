.class public interface abstract Lcom/samsung/android/wifi/ai/ISemWifiAiService;
.super Ljava/lang/Object;
.source "ISemWifiAiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;,
        Lcom/samsung/android/wifi/ai/ISemWifiAiService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ai.ISemWifiAiService"


# virtual methods
.method public abstract blacklist nsdTerminate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist serviceTypeQuery([[F[Ljava/lang/String;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist toggleDebugMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
