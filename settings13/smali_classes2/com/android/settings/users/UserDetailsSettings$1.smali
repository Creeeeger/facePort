.class Lcom/android/settings/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;I)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->val$dialogId:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserDetailsSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmPhonePref(Lcom/android/settings/users/UserDetailsSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserDetailsSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmPhonePref(Lcom/android/settings/users/UserDetailsSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserDetailsSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserDetailsSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    :cond_4
    :goto_0
    return-void
.end method
