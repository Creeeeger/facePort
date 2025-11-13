.class public abstract Landroid/app/admin/DevicePolicyCache;
.super Ljava/lang/Object;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    }
.end annotation


# direct methods
.method protected constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/app/admin/DevicePolicyCache;
    .locals 2

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->-$$Nest$sfgetINSTANCE()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract blacklist canAdminGrantSensorsPermissions()Z
.end method

.method public abstract blacklist getContentProtectionPolicy(I)I
.end method

.method public abstract blacklist getLauncherShortcutOverrides()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPasswordQuality(I)I
.end method

.method public abstract blacklist getPermissionPolicy(I)I
.end method

.method public abstract blacklist isScreenCaptureAllowed(I)Z
.end method
