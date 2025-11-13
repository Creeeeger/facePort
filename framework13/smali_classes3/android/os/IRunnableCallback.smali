.class public interface abstract Landroid/os/IRunnableCallback;
.super Ljava/lang/Object;
.source "IRunnableCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRunnableCallback$Stub;,
        Landroid/os/IRunnableCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IRunnableCallback"


# virtual methods
.method public abstract blacklist run(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
