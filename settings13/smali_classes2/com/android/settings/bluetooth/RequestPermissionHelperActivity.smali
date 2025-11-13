.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mEventId:Ljava/lang/String;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 204
    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x78

    .line 207
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 211
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    .line 216
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const-string v2, "Error: there\'s a problem starting Bluetooth"

    const-string v3, "RequestPermissionHelperActivity"

    if-nez v0, :cond_3

    .line 218
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.android.settings.bluetooth.extra.APP_LABEL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 224
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_4

    .line 226
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v4

    :cond_5
    return v1
.end method


# virtual methods
.method createDialog()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 100
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 133
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_disablement:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_1
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_disablement_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 102
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-gez v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 104
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 105
    :cond_3
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_enablement_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 107
    sget v1, Lcom/android/settings/R$string;->event_bluetooth_request_permission_enable:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEventId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    if-nez v1, :cond_6

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 111
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_lasting_discovery:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 114
    :cond_5
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_lasting_discovery_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 117
    sget v1, Lcom/android/settings/R$string;->event_bluetooth_request_permission_enable_discoverable:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEventId:Ljava/lang/String;

    goto :goto_4

    .line 120
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 121
    sget v5, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_discovery:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    .line 121
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 123
    :cond_7
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_discovery_no_name:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 123
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 126
    sget v1, Lcom/android/settings/R$string;->event_bluetooth_request_permission_enable_discoverable:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEventId:Ljava/lang/String;

    .line 138
    :goto_4
    sget v1, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 139
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    sget v1, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 142
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 152
    iget p2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    goto :goto_1

    .line 155
    :cond_1
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    const-string/jumbo v0, "no_bluetooth"

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 159
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 160
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 168
    :cond_3
    :goto_0
    sget p1, Lcom/android/settings/R$string;->detail_ok:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 178
    :goto_1
    sget p1, Lcom/android/settings/R$string;->detail_ok:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, -0x2

    if-ne p2, p1, :cond_6

    .line 180
    sget p1, Lcom/android/settings/R$string;->detail_cancel:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    :goto_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEventId:Ljava/lang/String;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 187
    sget p2, Lcom/android/settings/R$string;->screen_bluetooth_request_permission:I

    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEventId:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const-string p0, "RequestPermissionHelperActivity"

    const-string p1, "Click button is not which POSITIVE or NEGATIVE"

    .line 182
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->auto_confirm_bluetooth_activation_dialog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    return-void
.end method
