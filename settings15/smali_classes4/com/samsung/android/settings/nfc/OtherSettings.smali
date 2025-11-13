.class public Lcom/samsung/android/settings/nfc/OtherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z


# instance fields
.field public isRegistered:Z

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mDoNotFinishDialog:Z

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

.field public final mReceiver:Lcom/samsung/android/settings/nfc/OtherSettings$1;

.field public mSavedConflctDialogMsg:Ljava/lang/String;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public final mSettingsPackageMonitor:Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

.field public final mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

.field public final otherAppPreferenceCallback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

.field public roleManager:Landroid/app/role/RoleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$1;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Lcom/samsung/android/settings/nfc/OtherSettings$1;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$2;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->otherAppPreferenceCallback:Lcom/samsung/android/settings/nfc/OtherSettings$2;

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$3;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe4b

    return p0
.end method

.method public final getOtherApps(Z)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    iget-object v6, v2, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v6, v9}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v11

    const-string v12, "OtherBackend"

    if-eqz v11, :cond_0

    const-string v9, "Skipping work profile apps"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v11, v2, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const-string/jumbo v14, "other"

    invoke-virtual {v11, v14, v13}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/ApduServiceInfo;

    new-instance v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v9, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v10

    iput-boolean v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isManagedProfile:Z

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v5, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    iput-boolean v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isCurrentUser:Z

    iget-object v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    if-nez v10, :cond_3

    move/from16 v16, v5

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    move/from16 v16, v5

    iget-object v5, v2, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    const-class v10, Landroid/os/UserManager;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userName:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5

    :cond_5
    const-string v5, "Icon is null"

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_5
    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_6
    const-string v10, "Banner is null"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    :goto_6
    iget-object v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    iget-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v5, :cond_7

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    :cond_7
    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->isCategoryOtherServiceEnabled()Z

    move-result v5

    iput-boolean v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "appInfo componentName, userId : "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v16

    goto/16 :goto_1

    :cond_9
    move/from16 v16, v5

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/OtherSettings;->roleManager:Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.WALLET"

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v10, 0x0

    goto :goto_7

    :cond_c
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz p1, :cond_e

    iget-object v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isCurrentUser:Z

    if-eqz v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    iget-object v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isCurrentUser:Z

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    return-object v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "ro.vendor.nfc.support.nonaid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    if-eqz p1, :cond_0

    const-string v0, "do_not_finish_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "saved_conflict_dialog_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f141a01

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1419ff

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const v2, 0x7f141a00

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v2, 0x7f14086b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    :cond_3
    const-string p0, "OtherSettings"

    const-string/jumbo p1, "onCreate() -- "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060738

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "OtherSettings"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegister Receiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "already unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 7

    const-string v0, "OtherSettings"

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "register Receiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Lcom/samsung/android/settings/nfc/OtherSettings$1;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Lcom/samsung/android/settings/nfc/OtherSettings$1;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "already registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "do_not_finish_dialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "saved_conflict_dialog_msg"

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
