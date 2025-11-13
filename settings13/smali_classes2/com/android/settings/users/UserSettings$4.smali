.class Lcom/android/settings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$4;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 744
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 745
    iget p1, p0, Lcom/android/settings/users/UserSettings$4;->val$dialogId:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 775
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 771
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 767
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 763
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 759
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 755
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$4;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p3, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
