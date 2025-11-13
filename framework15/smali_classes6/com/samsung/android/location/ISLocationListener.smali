.class public interface abstract Lcom/samsung/android/location/ISLocationListener;
.super Ljava/lang/Object;
.source "ISLocationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationListener$Stub;,
        Lcom/samsung/android/location/ISLocationListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationListener"


# virtual methods
.method public abstract blacklist onLocationChanged(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
