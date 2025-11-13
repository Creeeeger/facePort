.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final blacklist TRANSACTION_addOnAssociationsChangedListener:I = 0xf

.field static final blacklist TRANSACTION_addOnMessageReceivedListener:I = 0x14

.field static final blacklist TRANSACTION_addOnTransportsChangedListener:I = 0x11

.field static final blacklist TRANSACTION_applyRestoredPayload:I = 0x28

.field static final greylist-max-o TRANSACTION_associate:I = 0x1

.field static final blacklist TRANSACTION_attachSystemDataTransport:I = 0x1b

.field static final blacklist TRANSACTION_buildAssociationCancellationIntent:I = 0x1e

.field static final blacklist TRANSACTION_buildPermissionTransferUserConsentIntent:I = 0x18

.field static final blacklist TRANSACTION_canPairWithoutPrompt:I = 0xd

.field static final blacklist TRANSACTION_clearAssociationTag:I = 0x26

.field static final blacklist TRANSACTION_createAssociation:I = 0xe

.field static final blacklist TRANSACTION_detachSystemDataTransport:I = 0x1c

.field static final blacklist TRANSACTION_disablePermissionsSync:I = 0x22

.field static final blacklist TRANSACTION_disableSystemDataSync:I = 0x20

.field static final greylist-max-o TRANSACTION_disassociate:I = 0x5

.field static final blacklist TRANSACTION_enablePermissionsSync:I = 0x21

.field static final blacklist TRANSACTION_enableSecureTransport:I = 0x24

.field static final blacklist TRANSACTION_enableSystemDataSync:I = 0x1f

.field static final blacklist TRANSACTION_getAllAssociationsForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_getAssociations:I = 0x2

.field static final blacklist TRANSACTION_getBackupPayload:I = 0x27

.field static final blacklist TRANSACTION_getPermissionSyncRequest:I = 0x23

.field static final greylist-max-o TRANSACTION_hasNotificationAccess:I = 0x6

.field static final blacklist TRANSACTION_isCompanionApplicationBound:I = 0x1d

.field static final blacklist TRANSACTION_isDeviceAssociatedForWifiConnection:I = 0x8

.field static final blacklist TRANSACTION_isPermissionTransferUserConsented:I = 0x19

.field static final blacklist TRANSACTION_legacyDisassociate:I = 0x4

.field static final blacklist TRANSACTION_legacyStartObservingDevicePresence:I = 0x9

.field static final blacklist TRANSACTION_legacyStopObservingDevicePresence:I = 0xa

.field static final blacklist TRANSACTION_notifySelfManagedDeviceAppeared:I = 0x16

.field static final blacklist TRANSACTION_notifySelfManagedDeviceDisappeared:I = 0x17

.field static final blacklist TRANSACTION_removeBond:I = 0x29

.field static final blacklist TRANSACTION_removeOnAssociationsChangedListener:I = 0x10

.field static final blacklist TRANSACTION_removeOnMessageReceivedListener:I = 0x15

.field static final blacklist TRANSACTION_removeOnTransportsChangedListener:I = 0x12

.field static final greylist-max-o TRANSACTION_requestNotificationAccess:I = 0x7

.field static final blacklist TRANSACTION_sendMessage:I = 0x13

.field static final blacklist TRANSACTION_setAssociationTag:I = 0x25

.field static final blacklist TRANSACTION_startObservingDevicePresence:I = 0xb

.field static final blacklist TRANSACTION_startSystemDataTransfer:I = 0x1a

.field static final blacklist TRANSACTION_stopObservingDevicePresence:I = 0xc


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

    invoke-direct {p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "removeBond"

    return-object v0

    :pswitch_1
    const-string v0, "applyRestoredPayload"

    return-object v0

    :pswitch_2
    const-string v0, "getBackupPayload"

    return-object v0

    :pswitch_3
    const-string v0, "clearAssociationTag"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setAssociationTag"

    return-object v0

    :pswitch_5
    const-string v0, "enableSecureTransport"

    return-object v0

    :pswitch_6
    const-string v0, "getPermissionSyncRequest"

    return-object v0

    :pswitch_7
    const-string v0, "disablePermissionsSync"

    return-object v0

    :pswitch_8
    const-string v0, "enablePermissionsSync"

    return-object v0

    :pswitch_9
    const-string v0, "disableSystemDataSync"

    return-object v0

    :pswitch_a
    const-string v0, "enableSystemDataSync"

    return-object v0

    :pswitch_b
    const-string v0, "buildAssociationCancellationIntent"

    return-object v0

    :pswitch_c
    const-string v0, "isCompanionApplicationBound"

    return-object v0

    :pswitch_d
    const-string v0, "detachSystemDataTransport"

    return-object v0

    :pswitch_e
    const-string v0, "attachSystemDataTransport"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "startSystemDataTransfer"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "isPermissionTransferUserConsented"

    return-object v0

    :pswitch_11
    const-string v0, "buildPermissionTransferUserConsentIntent"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "notifySelfManagedDeviceDisappeared"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "notifySelfManagedDeviceAppeared"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "removeOnMessageReceivedListener"

    return-object v0

    :pswitch_15
    const-string v0, "addOnMessageReceivedListener"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "sendMessage"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "removeOnTransportsChangedListener"

    return-object v0

    :pswitch_18
    const-string v0, "addOnTransportsChangedListener"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "removeOnAssociationsChangedListener"

    return-object v0

    :pswitch_1a
    const-string v0, "addOnAssociationsChangedListener"

    return-object v0

    :pswitch_1b
    const-string v0, "createAssociation"

    return-object v0

    :pswitch_1c
    const-string v0, "canPairWithoutPrompt"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "stopObservingDevicePresence"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "startObservingDevicePresence"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "legacyStopObservingDevicePresence"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "legacyStartObservingDevicePresence"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "isDeviceAssociatedForWifiConnection"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "requestNotificationAccess"

    return-object v0

    :pswitch_23
    const-string v0, "hasNotificationAccess"

    return-object v0

    :pswitch_24
    const-string v0, "disassociate"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "legacyDisassociate"

    return-object v0

    :pswitch_26
    const-string v0, "getAllAssociationsForUser"

    return-object v0

    :pswitch_27
    const-string v0, "getAssociations"

    return-object v0

    :pswitch_28
    const-string v0, "associate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
.method protected blacklist addOnAssociationsChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist addOnMessageReceivedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist addOnTransportsChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist attachSystemDataTransport_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createAssociation_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist detachSystemDataTransport_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enableSecureTransport_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAllAssociationsForUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isDeviceAssociatedForWifiConnection_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist legacyStartObservingDevicePresence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist legacyStopObservingDevicePresence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notifySelfManagedDeviceAppeared_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notifySelfManagedDeviceDisappeared_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.companion.ICompanionDeviceManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond(ILjava/lang/String;I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->applyRestoredPayload([BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getBackupPayload(I)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->clearAssociationTag(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->setAssociationTag(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSecureTransport(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->disablePermissionsSync(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->enablePermissionsSync(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->disableSystemDataSync(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSystemDataSync(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->isCompanionApplicationBound(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/companion/ISystemDataTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ISystemDataTransferCallback;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->isPermissionTransferUserConsented(Ljava/lang/String;II)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage(I[B[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v2, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/ObservingDevicePresenceRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v2, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/ObservingDevicePresenceRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_28
    sget-object v2, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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

.method protected blacklist removeBond_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeOnAssociationsChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeOnMessageReceivedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeOnTransportsChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist startObservingDevicePresence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist stopObservingDevicePresence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
