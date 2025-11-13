.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final sAccessibilityBounceKeysUri:Landroid/net/Uri;

.field public static final sAccessibilitySlowKeysUri:Landroid/net/Uri;

.field public static final sAccessibilityStickyKeysUri:Landroid/net/Uri;

.field public static final sVirtualKeyboardSettingsUri:Landroid/net/Uri;


# instance fields
.field public mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

.field public final mAccessibilityBounceKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

.field public mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

.field public final mAccessibilitySlowKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

.field public mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

.field public final mAccessibilityStickyKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

.field public mAutoInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field public final mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

.field public mIm:Landroid/hardware/input/InputManager;

.field public mIntentWaitingForResult:Landroid/content/Intent;

.field public mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

.field public mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

.field public final mLastHardKeyboards:Ljava/util/ArrayList;

.field public mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

.field public final mShowVirtualKeyboardSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;


# direct methods
.method public static $r8$lambda$J4XxqnIbWDLeFXC5A2o7uVF1_0s(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f140881

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    const-class v8, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    const-class v9, Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodInfoAsUser(Landroid/os/UserHandle;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v10

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    invoke-virtual {v5, v7, v6, v10, v8}, Landroid/hardware/input/InputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v11

    invoke-virtual {v5, v7, v6, v10, v8}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v11

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v11, v7

    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v5, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mVendorId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mProductId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x72f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch$1()V

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysFeatureEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysFeatureEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysFeatureFlagEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityBounceKeysSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilitySlowKeysSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityStickyKeysSwitch()V

    :cond_7
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sVirtualKeyboardSettingsUri:Landroid/net/Uri;

    const-string v0, "accessibility_bounce_keys"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityBounceKeysUri:Landroid/net/Uri;

    const-string v0, "accessibility_slow_keys"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilitySlowKeysUri:Landroid/net/Uri;

    const-string v0, "accessibility_sticky_keys"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityStickyKeysUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    return-void
.end method

.method public static getHardKeyboards(Landroid/content/Context;)Ljava/util/List;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    new-instance v6, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f1412b6

    if-nez v7, :cond_2

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v10, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :goto_2
    invoke-virtual {v5}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    move-result v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    new-instance v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda4;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15a

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "input_device_identifier"

    const-class p3, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    new-instance p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p2, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string p1, "keyboardLayout"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const v0, 0x7f170107

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "keyboard_options_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "show_virtual_keyboard_switch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

    const-string v0, "keyboard_a11y_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "accessibility_bounce_keys"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f14082b

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "accessibility_slow_keys"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f142c80

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "accessibility_sticky_keys"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->keyboardSettingsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_new_keyboard_modifier_key"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "modifier_keys_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardA11yCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_device_identifier"

    const-class v2, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "com.android.settings.inputmethod.EXTRA_ENTRYPOINT"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x72e

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_4
    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutoInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    :cond_5
    if-eqz p1, :cond_6

    const-string p2, "auto_selection"

    const-class v1, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showEnabledLocalesKeyboardLayoutList$1(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onInputDeviceAdded(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard_shortcuts_helper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeysSwitchPreferenceChangeListener:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sVirtualKeyboardSettingsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityBounceKeysUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysFeatureFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilitySlowKeysUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityStickyKeysUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch$1()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityBounceKeysSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilitySlowKeysSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityStickyKeysSwitch()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "auto_selection"

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutoInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final showEnabledLocalesKeyboardLayoutList$1(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/16 v1, 0x15a

    iput v1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final updateAccessibilityBounceKeysSwitch()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityBounceKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final updateAccessibilitySlowKeysSwitch()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilitySlowKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final updateAccessibilityStickyKeysSwitch()V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mAccessibilityStickyKeys:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final updateShowVirtualKeyboardSwitch$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/TwoStatePreference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
