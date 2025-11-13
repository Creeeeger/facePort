.class public interface abstract Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;
.super Ljava/lang/Object;
.source "ISemAbTestConfigurationUpdateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Stub;,
        Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ISemAbTestConfigurationUpdateObserver"


# virtual methods
.method public abstract blacklist notifyAbTestConfigUpdate(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
