.class public interface abstract Lcom/samsung/android/mocca/IInternalServiceBridgeListener;
.super Ljava/lang/Object;
.source "IInternalServiceBridgeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/IInternalServiceBridgeListener$Stub;,
        Lcom/samsung/android/mocca/IInternalServiceBridgeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mocca.IInternalServiceBridgeListener"


# virtual methods
.method public abstract blacklist onUpdated(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
