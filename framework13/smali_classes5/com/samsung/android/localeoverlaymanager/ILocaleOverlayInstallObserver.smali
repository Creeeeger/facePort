.class public interface abstract Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;
.super Ljava/lang/Object;
.source "ILocaleOverlayInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver$Stub;,
        Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.localeoverlaymanager.ILocaleOverlayInstallObserver"


# virtual methods
.method public abstract blacklist onLocaleOverlaysInstalled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
