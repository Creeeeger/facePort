.class Landroid/location/LocationManager$LocationEnabledCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationEnabledCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mManager:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "numEntries"    # I

    .line 3653
    const-string v0, "cache_key.location_enabled"

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 3654
    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 3658
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 3660
    iget-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_1

    .line 3662
    :try_start_0
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    goto :goto_1

    .line 3663
    :catch_0
    move-exception v0

    .line 3664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3669
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 3670
    :catch_1
    move-exception v0

    .line 3671
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3645
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$LocationEnabledCache;->recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
