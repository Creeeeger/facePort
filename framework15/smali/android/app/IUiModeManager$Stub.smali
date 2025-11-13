.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addCallback:I = 0x1

.field static final blacklist TRANSACTION_addNightPriorityAllowedPackageFromShell:I = 0x11

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x3

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x4

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x2

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x20

.field static final blacklist TRANSACTION_getAttentionModeThemeOverlay:I = 0xb

.field static final blacklist TRANSACTION_getContrast:I = 0x21

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x5

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x19

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0x17

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x7

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0x9

.field static final blacklist TRANSACTION_getNightPriorityAllowedPackagesFromScpm:I = 0x10

.field static final blacklist TRANSACTION_getPackageNightMode:I = 0xe

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x1f

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0x14

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0x13

.field static final blacklist TRANSACTION_releaseProjection:I = 0x1c

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x1e

.field static final blacklist TRANSACTION_requestProjection:I = 0x1b

.field static final blacklist TRANSACTION_resetNightPriorityAppliedPackages:I = 0x12

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0xc

.field static final blacklist TRANSACTION_setAttentionModeThemeOverlay:I = 0xa

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x1a

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0x18

.field static final blacklist TRANSACTION_setDesktopMode:I = 0x22

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x6

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0x16

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0x15

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x8

.field static final blacklist TRANSACTION_setNightPriorityAllowedPackagesFromScpm:I = 0xf

.field static final blacklist TRANSACTION_setPackageNightMode:I = 0xd


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
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

    invoke-direct {p0, v0}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setDesktopMode"

    return-object v0

    :pswitch_1
    const-string v0, "getContrast"

    return-object v0

    :pswitch_2
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    :pswitch_3
    const-string v0, "getProjectingPackages"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    :pswitch_5
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "requestProjection"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    :pswitch_9
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    :pswitch_b
    const-string v0, "getCustomNightModeStart"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "isNightModeLocked"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "isUiModeLocked"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "resetNightPriorityAppliedPackages"

    return-object v0

    :pswitch_11
    const-string v0, "addNightPriorityAllowedPackageFromShell"

    return-object v0

    :pswitch_12
    const-string v0, "getNightPriorityAllowedPackagesFromScpm"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setNightPriorityAllowedPackagesFromScpm"

    return-object v0

    :pswitch_14
    const-string v0, "getPackageNightMode"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setPackageNightMode"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    :pswitch_17
    const-string v0, "getAttentionModeThemeOverlay"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "setAttentionModeThemeOverlay"

    return-object v0

    :pswitch_19
    const-string v0, "getNightModeCustomType"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    :pswitch_1b
    const-string v0, "getNightMode"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "setNightMode"

    return-object v0

    :pswitch_1d
    const-string v0, "getCurrentModeType"

    return-object v0

    :pswitch_1e
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    :pswitch_1f
    const-string v0, "disableCarMode"

    return-object v0

    :pswitch_20
    const-string v0, "enableCarMode"

    return-object v0

    :pswitch_21
    const-string v0, "addCallback"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
.method protected blacklist addOnProjectionStateChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist getActiveProjectionTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAttentionModeThemeOverlay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method protected blacklist getNightModeCustomType_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getProjectingPackages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.IUiModeManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setDesktopMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getContrast()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->resetNightPriorityAppliedPackages(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->addNightPriorityAllowedPackageFromShell(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->getPackageNightMode(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->setPackageNightMode(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->addCallback(Landroid/app/IUiModeManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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

.method protected blacklist removeOnProjectionStateChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setAttentionModeThemeOverlay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightModeCustomType_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
