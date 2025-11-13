.class public Landroid/app/admin/DevicePolicyResourcesManager;
.super Ljava/lang/Object;
.source "DevicePolicyResourcesManager.java"


# static fields
.field private static blacklist DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

.field private static blacklist DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "DevicePolicyResourcesManager"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v0, "disable_resources_updatability"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method


# virtual methods
.method public whitelist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 1

    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 3

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultIcon can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p4

    :cond_1
    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getResourceId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p4

    :cond_2
    return-object p4

    :cond_3
    :goto_0
    return-object p4
.end method

.method public whitelist getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v3, "UNDEFINED"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p4, p5}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resetDrawables(Ljava/util/Set;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetDrawables(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist resetStrings(Ljava/util/Set;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetStrings(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setDrawables(Ljava/util/Set;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setDrawables(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setStrings(Ljava/util/Set;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setStrings(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
