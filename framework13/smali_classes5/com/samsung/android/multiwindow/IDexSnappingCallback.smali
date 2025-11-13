.class public interface abstract Lcom/samsung/android/multiwindow/IDexSnappingCallback;
.super Ljava/lang/Object;
.source "IDexSnappingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;,
        Lcom/samsung/android/multiwindow/IDexSnappingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IDexSnappingCallback"


# virtual methods
.method public abstract blacklist onWindowSnappingChanged(ILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
