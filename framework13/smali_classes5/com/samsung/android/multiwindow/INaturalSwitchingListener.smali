.class public interface abstract Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
.super Ljava/lang/Object;
.source "INaturalSwitchingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Stub;,
        Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.INaturalSwitchingListener"


# virtual methods
.method public abstract blacklist onNaturalSwitchingFinish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNaturalSwitchingStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
