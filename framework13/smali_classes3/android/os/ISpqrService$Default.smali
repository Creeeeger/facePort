.class public Landroid/os/ISpqrService$Default;
.super Ljava/lang/Object;
.source "ISpqrService.java"

# interfaces
.implements Landroid/os/ISpqrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISpqrService;
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

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldPkgPath"    # Ljava/lang/String;
    .param p2, "newPkgPath"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appId"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "profPath"    # Ljava/lang/String;
    .param p7, "oldVersionName"    # Ljava/lang/String;
    .param p8, "newVersionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method
