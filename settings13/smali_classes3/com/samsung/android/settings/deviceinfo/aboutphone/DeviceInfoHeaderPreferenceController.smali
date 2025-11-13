.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DeviceInfoHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;


# static fields
.field private static final SINGLE_URI:Landroid/net/Uri;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

.field private mDeviceNameEditBtn:Landroid/widget/Button;

.field private mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

.field private mDeviceNameObserver:Landroid/database/ContentObserver;

.field private mDeviceNameView:Landroid/widget/TextView;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mHasEditDeviceNameExtra:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowDeviceNameEditorDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->showDeviceNameEditorDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mHasEditDeviceNameExtra:Z

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p4, :cond_0

    .line 71
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private createDeviceInfoHeader()Landroid/view/View;
    .locals 3

    .line 112
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceInfoHeader()Landroid/view/View;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceNameView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceNameEditButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditBtn:Landroid/widget/Button;

    .line 118
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getDeviceNameObserver()Landroid/database/ContentObserver;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private getGivenNameSamsungAccountProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string p0, "PrefControllerMixin"

    const-string v0, ""

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "account_given_name"

    .line 163
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 166
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success Getting SA Names"

    .line 168
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string p1, "Fail Getting SA Names"

    .line 171
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v7, :cond_1

    .line 178
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Query Failed!"

    .line 174
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v7, :cond_2

    .line 178
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    throw p0
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .locals 0

    .line 152
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.osp.app.signin"

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showDeviceNameEditorDialog()V
    .locals 2

    .line 237
    sget v0, Lcom/android/settings/R$string;->phone_name_title:I

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    if-nez v1, :cond_1

    .line 239
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    .line 240
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$ConfirmationDialogFragmentListener;)V

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mHasEditDeviceNameExtra:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->setAnchorView(Landroid/view/View;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const/4 v1, -0x2

    .line 101
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 104
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->createDeviceInfoHeader()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 106
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "sec_device_info_header"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mHasEditDeviceNameExtra:Z

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    return-void
.end method

.method public onPositiveClick()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameEditor:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit_device_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mHasEditDeviceNameExtra:Z

    if-eqz v2, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->showDeviceNameEditorDialog()V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    if-eqz p0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    .line 202
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->getDeviceNameObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 201
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synced_account_name"

    .line 206
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->getGivenNameSamsungAccountProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public updateDeviceImage()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    if-nez p0, :cond_0

    const-string p0, "DeviceInfoHeaderPreferenceController"

    const-string v0, "Fail to update updateDeviceImage"

    .line 144
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->updateDeviceImage()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    if-nez p0, :cond_0

    const-string p0, "DeviceInfoHeaderPreferenceController"

    const-string v0, "Fail to update UI"

    .line 136
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initInfoChart()V

    return-void
.end method
