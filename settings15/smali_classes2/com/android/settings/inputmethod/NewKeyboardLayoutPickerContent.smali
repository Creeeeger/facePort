.class public Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

.field public mNewKeyboardLayoutPickerController:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "KeyboardLayoutPicker"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7a6

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700f7

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-class p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mNewKeyboardLayoutPickerController:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    invoke-virtual {p1, p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->initialize(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mNewKeyboardLayoutPickerController:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    iget-object p1, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutSelectedCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->registerKeyboardSelectedCallback(Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController$KeyboardLayoutSelectedCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
