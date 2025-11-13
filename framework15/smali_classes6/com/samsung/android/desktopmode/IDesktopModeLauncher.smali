.class public interface abstract Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
.super Ljava/lang/Object;
.source "IDesktopModeLauncher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;,
        Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopModeLauncher"


# virtual methods
.method public abstract blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
