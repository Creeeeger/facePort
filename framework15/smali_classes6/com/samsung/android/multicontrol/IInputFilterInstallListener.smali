.class public interface abstract Lcom/samsung/android/multicontrol/IInputFilterInstallListener;
.super Ljava/lang/Object;
.source "IInputFilterInstallListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;,
        Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multicontrol.IInputFilterInstallListener"


# virtual methods
.method public abstract blacklist onInstalled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUninstalled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
