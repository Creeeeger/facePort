.class public interface abstract Landroid/os/ILazyService;
.super Ljava/lang/Object;
.source "ILazyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ILazyService$Stub;,
        Landroid/os/ILazyService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.ILazyService"


# virtual methods
.method public abstract blacklist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
