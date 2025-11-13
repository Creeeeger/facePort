.class public final Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/Map;

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 7

    .line 166
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 169
    new-instance v5, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 173
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v1, v2, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private removeBKB10KeyboardLayout()V
    .locals 7

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 158
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bkb10"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/KeyboardLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_device_identifier"

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    const-string v1, "input_method_info"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "input_method_subtype"

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->removeBKB10KeyboardLayout()V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 131
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/hardware/input/InputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 110
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    return-void
.end method
