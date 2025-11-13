.class public final synthetic Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onPositiveClick()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onPositiveClick()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onPositiveClick()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
