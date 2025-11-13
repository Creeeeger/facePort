.class public final Lcom/android/settings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic val$dialogId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$4;->val$dialogId:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p1, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/settings/users/UserSettings$4;->val$dialogId:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p3, 0x7f0a0068

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
