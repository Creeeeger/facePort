.class public interface abstract Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
.super Ljava/lang/Object;
.source "IAuthTouchEnableListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;,
        Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.cmfa.AuthTouch.IAuthTouchEnableListener"


# virtual methods
.method public abstract blacklist notifyTouchEventEnabled(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
