.class public final synthetic Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;ZLcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

    iput-boolean p2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mSubtypeLabel:Ljava/lang/CharSequence;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1411f2

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mSubtypeLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget v2, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "input_device_identifier"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "input_method_info"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "input_method_subtype"

    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "user_id"

    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "keyboard_layout_picker_title"

    invoke-virtual {v4, p0, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p1, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x7a7

    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
