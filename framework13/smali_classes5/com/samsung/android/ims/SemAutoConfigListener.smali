.class public interface abstract Lcom/samsung/android/ims/SemAutoConfigListener;
.super Ljava/lang/Object;
.source "SemAutoConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemAutoConfigListener$Stub;,
        Lcom/samsung/android/ims/SemAutoConfigListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemAutoConfigListener"


# virtual methods
.method public abstract blacklist onAutoConfigurationCompleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onIidTokenNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMsisdnNumberNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationCodeNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
