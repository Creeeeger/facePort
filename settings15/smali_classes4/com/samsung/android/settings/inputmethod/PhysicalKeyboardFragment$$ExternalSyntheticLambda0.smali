.class public final synthetic Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    sget-object v4, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v6, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v7, 0x7f140881

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    new-instance v8, Landroidx/preference/Preference;

    invoke-virtual {v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v9, v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v11, v14, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v10, v2

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_5

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v9, v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v9, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    invoke-direct {v9, v3, v7}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v6, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v5, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->IFW_WIRELESS_KEYBOARD_MOUSE_SHARE:Z

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isExistPogoKeyboard(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_a

    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v5, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v0, "share_keyboard"

    invoke-virtual {v3, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    const v1, 0x7f141a52

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    if-nez v0, :cond_8

    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerSettingsObserver$1()V

    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mOnWirelessKeyboardShareChangedListener:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManagerGlobal;->registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    :goto_4
    iget-object v0, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->updateWirelessKeyboardShareStatus()V

    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->syncStatus()V

    :cond_a
    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->setRelativeLinkView()V

    :goto_5
    return-void

    :pswitch_0
    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-class v5, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    if-nez v5, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :cond_b
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v6

    array-length v7, v6

    :goto_6
    if-ge v1, v7, :cond_10

    aget v8, v6, v1

    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v8}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    new-instance v9, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f1412b6

    if-nez v12, :cond_d

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_d
    invoke-virtual {v5, v12}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v12

    if-nez v12, :cond_e

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_e
    invoke-virtual {v12}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-virtual {v8}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_8
    add-int/2addr v1, v2

    goto :goto_6

    :cond_10
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda4;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :goto_9
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v4, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
