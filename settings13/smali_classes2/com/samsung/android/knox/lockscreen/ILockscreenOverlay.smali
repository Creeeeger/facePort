.class public interface abstract Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
.super Ljava/lang/Object;
.source "ILockscreenOverlay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
    }
.end annotation


# virtual methods
.method public abstract getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
