.class public Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Default;
.super Ljava/lang/Object;
.source "ILocaleOverlayManager.java"

# interfaces
.implements Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;)Z
    .locals 1
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .param p2, "userId"    # I
    .param p3, "observer"    # Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyLocalesForPackage(Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "observer"    # Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
