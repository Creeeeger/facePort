.class public final Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
.super Ljava/lang/Object;
.source "FullyManagedDeviceProvisioningParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdminExtras:Landroid/os/PersistableBundle;

.field blacklist mDemoDevice:Z

.field private final blacklist mDeviceAdminComponentName:Landroid/content/ComponentName;

.field blacklist mDeviceOwnerCanGrantSensorsPermissions:Z

.field private blacklist mLeaveAllSystemAppsEnabled:Z

.field private blacklist mLocalTime:J

.field private blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mOwnerName:Ljava/lang/String;

.field private blacklist mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .locals 13

    new-instance v12, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    iget-object v4, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocalTime:J

    iget-object v7, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    iget-boolean v8, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_0
    move-object v9, v0

    iget-boolean v10, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V

    return-object v12
.end method

.method public whitelist setAdminExtras(Landroid/os/PersistableBundle;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist setCanDeviceOwnerGrantSensorsPermissions(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    return-object p0
.end method

.method public whitelist setDemoDevice(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    return-object p0
.end method

.method public whitelist setLeaveAllSystemAppsEnabled(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    return-object p0
.end method

.method public whitelist setLocalTime(J)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocalTime:J

    return-object p0
.end method

.method public whitelist setLocale(Ljava/util/Locale;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method
