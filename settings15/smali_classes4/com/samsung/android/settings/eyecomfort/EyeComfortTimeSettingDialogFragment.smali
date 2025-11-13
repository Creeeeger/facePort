.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mPreference:Landroidx/preference/Preference;


# instance fields
.field public mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

.field public mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v2

    if-eqz p1, :cond_0

    const-string v0, "StartTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "EndTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "Tab"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    new-instance v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f15024a

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    iput-object v5, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    iput v0, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    iput v2, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    iput p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d08a9

    invoke-virtual {p1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    iget-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    const v0, 0x7f0a0d53

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslTimePicker;

    iput-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iput-object v4, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

    iput-object v4, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    invoke-static {v5}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mIs24HourFormat:Z

    iget-object v0, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    const v0, 0x7f0a0d54

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    iget-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_1
    iget-object p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14238b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2, p1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x2

    invoke-virtual {v4, v2, p1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    invoke-virtual {v4, v3, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    iget p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    iget p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    if-nez p1, :cond_2

    iget p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    goto :goto_1

    :cond_2
    iget p1, v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    :goto_1
    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updatePicker$2(I)V

    iput-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    sget-object p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setDialogAnchor(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_type"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateTimeSummary()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    const-string v1, "StartTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    iget v0, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    const-string v1, "EndTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    iget v0, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    const-string v1, "Tab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setDialogAnchor(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x2

    invoke-static {v1, p1, v2, p1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    return-void
.end method
