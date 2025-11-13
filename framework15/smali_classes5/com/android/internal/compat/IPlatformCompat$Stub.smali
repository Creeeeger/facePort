.class public abstract Lcom/android/internal/compat/IPlatformCompat$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompat.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_getAppConfig:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

.field static final blacklist TRANSACTION_clearOverride:I = 0xc

.field static final blacklist TRANSACTION_clearOverrideForTest:I = 0xd

.field static final blacklist TRANSACTION_clearOverrides:I = 0x12

.field static final blacklist TRANSACTION_clearOverridesForTest:I = 0x13

.field static final blacklist TRANSACTION_containsOverride:I = 0x7

.field static final blacklist TRANSACTION_disableTargetSdkChanges:I = 0x11

.field static final blacklist TRANSACTION_enableTargetSdkChanges:I = 0x10

.field static final blacklist TRANSACTION_getAppConfig:I = 0x14

.field static final blacklist TRANSACTION_getOverrideValidator:I = 0x17

.field static final blacklist TRANSACTION_isChangeEnabled:I = 0x4

.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x5

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x6

.field static final blacklist TRANSACTION_listAllChanges:I = 0x15

.field static final blacklist TRANSACTION_listUIChanges:I = 0x16

.field static final blacklist TRANSACTION_putAllOverridesOnReleaseBuilds:I = 0x9

.field static final blacklist TRANSACTION_putOverridesOnReleaseBuilds:I = 0xa

.field static final blacklist TRANSACTION_removeAllOverridesOnReleaseBuilds:I = 0xe

.field static final blacklist TRANSACTION_removeOverridesOnReleaseBuilds:I = 0xf

.field static final blacklist TRANSACTION_reportChange:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x2

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x3

.field static final blacklist TRANSACTION_setOverrides:I = 0x8

.field static final blacklist TRANSACTION_setOverridesForTest:I = 0xb


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android.permission.LOG_COMPAT_CHANGE"

    const-string v1, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompat;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "getOverrideValidator"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "listUIChanges"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "listAllChanges"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "getAppConfig"

    return-object v0

    :pswitch_4
    const-string v0, "clearOverridesForTest"

    return-object v0

    :pswitch_5
    const-string v0, "clearOverrides"

    return-object v0

    :pswitch_6
    const-string v0, "disableTargetSdkChanges"

    return-object v0

    :pswitch_7
    const-string v0, "enableTargetSdkChanges"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "removeOverridesOnReleaseBuilds"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "removeAllOverridesOnReleaseBuilds"

    return-object v0

    :pswitch_a
    const-string v0, "clearOverrideForTest"

    return-object v0

    :pswitch_b
    const-string v0, "clearOverride"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setOverridesForTest"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "putOverridesOnReleaseBuilds"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "putAllOverridesOnReleaseBuilds"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setOverrides"

    return-object v0

    :pswitch_10
    const-string v0, "containsOverride"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "isChangeEnabledByUid"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "isChangeEnabledByPackageName"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "isChangeEnabled"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "reportChange"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist clearOverrideForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist clearOverride_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist clearOverridesForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist clearOverrides_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist containsOverride_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist disableTargetSdkChanges_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enableTargetSdkChanges_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAppConfig_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isChangeEnabledByPackageName_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isChangeEnabledByUid_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isChangeEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist listAllChanges_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.compat.IPlatformCompat"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride(JLjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->containsOverride(JLjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid(JI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist putAllOverridesOnReleaseBuilds_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist putOverridesOnReleaseBuilds_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeAllOverridesOnReleaseBuilds_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeOverridesOnReleaseBuilds_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist reportChangeByPackageName_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist reportChangeByUid_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist reportChange_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setOverridesForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setOverrides_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
