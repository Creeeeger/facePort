.class public interface abstract Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;
.super Ljava/lang/Object;
.source "IDexTransientCaptionDelayListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;,
        Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IDexTransientCaptionDelayListener"


# virtual methods
.method public abstract blacklist onDelayChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
