.class public interface abstract Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;
.super Ljava/lang/Object;
.source "IDragAndDropControllerProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;,
        Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IDragAndDropControllerProxy"


# virtual methods
.method public abstract blacklist show(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
