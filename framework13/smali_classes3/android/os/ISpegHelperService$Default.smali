.class public Landroid/os/ISpegHelperService$Default;
.super Ljava/lang/Object;
.source "ISpegHelperService.java"

# interfaces
.implements Landroid/os/ISpegHelperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISpegHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isCreate"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgPath"    # Ljava/lang/String;
    .param p2, "baseDmPath"    # Ljava/lang/String;
    .param p3, "profilePath"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method
