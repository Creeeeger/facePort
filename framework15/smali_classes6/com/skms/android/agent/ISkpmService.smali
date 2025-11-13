.class public interface abstract Lcom/skms/android/agent/ISkpmService;
.super Ljava/lang/Object;
.source "ISkpmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skms/android/agent/ISkpmService$Stub;,
        Lcom/skms/android/agent/ISkpmService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.skms.android.agent.ISkpmService"


# virtual methods
.method public abstract blacklist SkpmChangeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SkpmReadInjectedKeyUID(BBLjava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SkpmServiceCreateGetKeySession(BLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SkpmServiceInjectedKeyVerification(BBLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SkpmServiceKeyInjection(BBLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SkpmServiceReleaseGetKeySession()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
