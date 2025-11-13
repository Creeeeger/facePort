.class Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDevicePolicyCache"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    .locals 1

    sget-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist canAdminGrantSensorsPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContentProtectionPolicy(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getLauncherShortcutOverrides()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPasswordQuality(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermissionPolicy(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScreenCaptureAllowed(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
