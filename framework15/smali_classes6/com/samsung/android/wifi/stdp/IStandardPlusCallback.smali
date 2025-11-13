.class public interface abstract Lcom/samsung/android/wifi/stdp/IStandardPlusCallback;
.super Ljava/lang/Object;
.source "IStandardPlusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/stdp/IStandardPlusCallback$Stub;,
        Lcom/samsung/android/wifi/stdp/IStandardPlusCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.stdp.IStandardPlusCallback"


# virtual methods
.method public abstract blacklist onEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
