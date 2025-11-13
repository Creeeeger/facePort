.class public interface abstract Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
.super Ljava/lang/Object;
.source "IDesktopModeBlocker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;,
        Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopModeBlocker"


# virtual methods
.method public abstract blacklist onBlocked()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
