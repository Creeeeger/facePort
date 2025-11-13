.class public Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public mAutomataLanguageLocaleList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mIm:Landroid/hardware/input/InputManager;

.field public mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mInputDeviceId:I

.field public mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field public final mKeyboardInfoList:Ljava/util/ArrayList;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NewKeyboardLayoutEnabledLocalesFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7a7

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700b8

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "NewKeyboardLayoutEnabledLocalesFragment"

    if-nez p1, :cond_0

    const-string p0, "Arguments should not be null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "input_device_identifier"

    const-class v2, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-nez p1, :cond_1

    const-string p0, "The inputDeviceIdentifier should not be null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-static {v1, p1}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "inputDevice is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "NAME"

    const-string v1, ""

    const-string v2, "automata_language_locale_list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.honeyboard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isHoneyboardSupport : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " package name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "NewKeyboardSettingsUtils"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const-string v3, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    goto :goto_0

    :cond_3
    const-string v3, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    :goto_0
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "VALUE"

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_7

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :catch_0
    if-eqz v10, :cond_7

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_8

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aAutomataResult["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    iput-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserManager;->isPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getCurrentUserIdOfType(Landroid/os/UserManager;I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceId:I

    return-void
.end method

.method public final onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->updateCheckedState()V

    :cond_0
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->updateCheckedState()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NewKeyboardLayoutEnabledLocalesFragment"

    const-string v1, "Unable to start: input device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceId:I

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceId:I

    return-void
.end method

.method public final updateCheckedState()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$1;-><init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v8, v9, v10}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    iget v10, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    iget-object v11, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v9, v11, v10, v3, v5}, Landroid/hardware/input/InputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mIm:Landroid/hardware/input/InputManager;

    iget v11, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    iget-object v12, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v10, v12, v11, v3, v5}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    :goto_2
    array-length v11, v9

    if-ge v6, v11, :cond_2

    aget-object v11, v9, v6

    invoke-virtual {v11}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getSelectionCriteria()I

    invoke-direct {v11, v8, v6, v3, v5}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v6, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;

    iget-object v9, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f1412b4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9, v3, v5}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v4, Landroidx/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;

    new-instance v8, Landroidx/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v9, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    if-nez v10, :cond_9

    :cond_8
    :goto_4
    move v9, v6

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v9, v7

    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mSubtypeLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_b

    iget-object v10, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mSubtypeLabel:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_b
    iget-object v10, v5, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mLayout:Ljava/lang/String;

    :goto_6
    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, v9, v5}, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;ZLcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;)V

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_3

    :cond_c
    return-void
.end method
