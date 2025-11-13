.class public abstract Landroid/app/admin/DeviceStateCache;
.super Ljava/lang/Object;
.source "DeviceStateCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/admin/DeviceStateCache;
    .locals 2

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->-$$Nest$sfgetINSTANCE()Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public blacklist hasAffiliationWithDevice(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist isDeviceProvisioned()Z
.end method

.method public abstract blacklist isUserOrganizationManaged(I)Z
.end method
