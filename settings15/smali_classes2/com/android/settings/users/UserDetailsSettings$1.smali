.class public final Lcom/android/settings/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;

.field public final synthetic val$dialogId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/users/UserDetailsSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$1;->val$dialogId:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p1, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->val$dialogId:I

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestResetPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
