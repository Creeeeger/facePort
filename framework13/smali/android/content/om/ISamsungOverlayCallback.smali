.class public interface abstract Landroid/content/om/ISamsungOverlayCallback;
.super Ljava/lang/Object;
.source "ISamsungOverlayCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/ISamsungOverlayCallback$Stub;,
        Landroid/content/om/ISamsungOverlayCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.om.ISamsungOverlayCallback"


# virtual methods
.method public abstract blacklist overlayStateChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
