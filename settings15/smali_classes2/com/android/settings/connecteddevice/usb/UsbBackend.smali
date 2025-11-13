.class public final Lcom/android/settings/connecteddevice/usb/UsbBackend;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFileTransferRestricted:Z

.field public final mFileTransferRestrictedBySystem:Z

.field public final mIsAdminUser:Z

.field public final mMidiSupported:Z

.field public mPort:Landroid/hardware/usb/UsbPort;

.field public mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field public final mTetheringRestricted:Z

.field public final mTetheringRestrictedBySystem:Z

.field public final mTetheringSupported:Z

.field public final mUVCEnabled:Z

.field public final mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    const-string v0, "no_config_tethering"

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    invoke-static {}, Landroid/hardware/usb/UsbManager;->isUvcSupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUVCEnabled:Z

    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mIsAdminUser:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.midi"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    const-class p2, Landroid/net/TetheringManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    return-void
.end method


# virtual methods
.method public final areAllRolesSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p0, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public areFunctionsDisallowedByNonAdminUser(J)Z
    .locals 2

    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mIsAdminUser:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x20

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final areFunctionsSupported(J)Z
    .locals 12

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    const-wide/16 v4, 0x20

    if-nez v0, :cond_2

    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    const-wide/16 v6, 0x10

    const-wide/16 v8, 0x4

    if-eqz v0, :cond_3

    and-long v10, p1, v8

    cmp-long v0, v10, v2

    if-nez v0, :cond_8

    and-long v10, p1, v6

    cmp-long v0, v10, v2

    if-nez v0, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    if-eqz v0, :cond_4

    and-long v10, p1, v4

    cmp-long v0, v10, v2

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    if-eqz v0, :cond_5

    and-long/2addr v8, p1

    cmp-long v0, v8, v2

    if-nez v0, :cond_8

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_8

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    if-eqz v0, :cond_6

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUVCEnabled:Z

    if-nez v0, :cond_7

    const-wide/16 v4, 0x80

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsDisallowedByNonAdminUser(J)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 v1, 0x1

    :cond_8
    :goto_0
    return v1
.end method

.method public final getDataRole()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final supportUSBDebuggingMenu(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sys.usb.config"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sys.usb.state"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v3, "supportUSBDebuggingMenu : "

    const-string v5, " : "

    invoke-static {v3, v0, v5, v2, v5}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UsbBackend"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "adb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    return v0

    :cond_0
    return v4
.end method

.method public final updatePorts()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPort;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
