.class public final synthetic Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/CheckBox;

    iget-object p2, p1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    check-cast p2, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    iput-boolean p0, p2, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-boolean p2, p2, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    const/4 v1, -0x2

    const-string v2, "cover_screen_show_notification"

    invoke-static {p0, v2, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void
.end method
