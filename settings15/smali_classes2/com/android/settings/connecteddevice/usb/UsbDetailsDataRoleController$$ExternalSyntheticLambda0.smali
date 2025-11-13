.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;

.field public final synthetic f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "onClick() - click current mode : "

    const-string v3, "UsbDetailsCtrlDataRole"

    invoke-static {v1, v2, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v4

    if-eq v1, v4, :cond_7

    iget-object v4, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v4, :cond_7

    sget-object v4, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    :try_start_0
    iget-object v4, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "content://com.sec.android.easyMover.statusProvider/isOtgTransferring"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "TRUE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "checkSmartSwitchTransfer - return true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f143022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :catch_0
    :cond_0
    const-string v4, "checkSmartSwitchTransfer - return false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    iget-object v3, v2, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    :goto_0
    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v1, v6, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    iget-object v3, v2, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v5, v1}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_5
    iput-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const v1, 0x7f1430a0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0xfa0

    goto :goto_2

    :cond_6
    const-wide/16 v1, 0x3a98

    :goto_2
    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    return-void
.end method
