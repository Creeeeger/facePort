.class public interface abstract Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
.super Ljava/lang/Object;
.source "ILocaleOverlayManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;,
        Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"


# virtual methods
.method public abstract blacklist applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist applyLocalesForPackage(Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
