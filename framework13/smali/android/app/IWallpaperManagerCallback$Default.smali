.class public Landroid/app/IWallpaperManagerCallback$Default;
.super Ljava/lang/Object;
.source "IWallpaperManagerCallback.java"

# interfaces
.implements Landroid/app/IWallpaperManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSemBackupStatusChanged(III)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "status"    # I
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onSemMultipackApplied(I)V
    .locals 0
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist onSemWallpaperChanged(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onWallpaperChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
