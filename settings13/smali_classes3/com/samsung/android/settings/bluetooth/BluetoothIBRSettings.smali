.class public final Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;
.super Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.source "BluetoothIBRSettings.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInBandRingtoneEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInBandRingtone(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->setInBandRingtone(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;-><init>()V

    .line 200
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    return-void
.end method

.method private isInBandRingtoneEnabled()Z
    .locals 2

    const-string p0, "persist.bluetooth.disableinbandringing"

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HFIBR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return p0
.end method

.method private launchIBRAskPopup()V
    .locals 3

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "launchIBRAskPopup :: "

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_ibr_ask_popup_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_ibr_ask_popup_content:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos_button"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "neg_button"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->launchDialog(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private setInBandRingtone(Z)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInBandRingtone :: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothIBRSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "persist.bluetooth.disableinbandringing"

    .line 157
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HFIBR-set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    return-void
.end method


# virtual methods
.method bluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "BluetoothIBRSettings"

    const-string p1, "onConfigurationChanged :: "

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothIBRSettings"

    const-string v0, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_in_band_ringtone_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settings/R$anim;->sec_bluetooth_ibr_tablet:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/settings/R$anim;->sec_bluetooth_ibr:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->loadAnimationResource(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_in_band_ringtone_setting_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onPause()V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->updateContentsView()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public switchStateChange(Z)V
    .locals 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchStateChange :: isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothIBRSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p0, "switchStateChange :: It is not user interaction"

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_3

    sget v1, Lcom/android/settings/R$string;->detail_switch_on:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/settings/R$string;->detail_switch_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_in_band_ringtone_setting_on_off_switch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_1

    .line 185
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->setInBandRingtone(Z)V

    return-void

    .line 180
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->launchIBRAskPopup()V

    return-void
.end method

.method updateContentsView()V
    .locals 4

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "updateContentsView :: refresh contents"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    .line 118
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_0
    const-string v2, "updateContentsView :: failed to get animation drawble.."

    .line 126
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 130
    sget v0, Lcom/android/settings/R$drawable;->sec_bluetooth_ibr_img_tablet_01:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_2
    sget v0, Lcom/android/settings/R$drawable;->sec_bluetooth_ibr_img_01:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    .line 139
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_ibr_description_tablet:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_3
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_ibr_description:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
