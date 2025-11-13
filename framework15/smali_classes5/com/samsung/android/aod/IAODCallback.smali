.class public interface abstract Lcom/samsung/android/aod/IAODCallback;
.super Ljava/lang/Object;
.source "IAODCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODCallback$Stub;,
        Lcom/samsung/android/aod/IAODCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAODCallback"


# virtual methods
.method public abstract blacklist onScreenTurningOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
