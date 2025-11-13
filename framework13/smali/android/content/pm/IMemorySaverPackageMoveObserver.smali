.class public interface abstract Landroid/content/pm/IMemorySaverPackageMoveObserver;
.super Ljava/lang/Object;
.source "IMemorySaverPackageMoveObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IMemorySaverPackageMoveObserver$Stub;,
        Landroid/content/pm/IMemorySaverPackageMoveObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IMemorySaverPackageMoveObserver"


# virtual methods
.method public abstract blacklist onCreated(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStatusChanged(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
