.class public Lcom/samsung/android/infoextraction/IKerykeion$Default;
.super Ljava/lang/Object;
.source "IKerykeion.java"

# interfaces
.implements Lcom/samsung/android/infoextraction/IKerykeion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/IKerykeion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addResultRule(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist restart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist setInfoExtractionListener(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist show(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist start(ILcom/samsung/android/infoextraction/KerykeionRequest;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "kRequest"    # Lcom/samsung/android/infoextraction/KerykeionRequest;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist stop(I)V
    .locals 0
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist training(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
