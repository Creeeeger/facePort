.class public final Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x3

    iget v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/UiModeManager;->setNightMode(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
