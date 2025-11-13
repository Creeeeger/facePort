.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->val$position:I

    check-cast p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    sput-object v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    iput-object p1, v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v2

    const-string v3, "EyeComfortTimeSettingDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    sget-object v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v2, 0x1

    const-string v3, "blue_light_filter_type"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "location_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iput v0, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    int-to-long v0, v0

    const/16 p1, 0x107e

    const/16 v2, 0x1081

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->dismiss()V

    :cond_4
    return-void
.end method
