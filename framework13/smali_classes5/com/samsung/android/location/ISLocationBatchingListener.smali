.class public interface abstract Lcom/samsung/android/location/ISLocationBatchingListener;
.super Ljava/lang/Object;
.source "ISLocationBatchingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationBatchingListener$Stub;,
        Lcom/samsung/android/location/ISLocationBatchingListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationBatchingListener"


# virtual methods
.method public abstract blacklist onLocationAvailable([Landroid/location/Location;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
