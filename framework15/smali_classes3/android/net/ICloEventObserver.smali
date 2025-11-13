.class public interface abstract Landroid/net/ICloEventObserver;
.super Ljava/lang/Object;
.source "ICloEventObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ICloEventObserver$Stub;,
        Landroid/net/ICloEventObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.ICloEventObserver"


# virtual methods
.method public abstract blacklist onUpdatedGroRlEnvironment(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
