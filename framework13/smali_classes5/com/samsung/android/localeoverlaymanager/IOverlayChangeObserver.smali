.class public interface abstract Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;
.super Ljava/lang/Object;
.source "IOverlayChangeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver$Stub;,
        Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.localeoverlaymanager.IOverlayChangeObserver"


# virtual methods
.method public abstract blacklist onChangeCompleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
