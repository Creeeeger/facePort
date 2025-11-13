.class Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;
.super Ljava/lang/Object;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmDialog(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmDialog(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmFrag(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmFrag(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmFrag(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {p1, p2}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fputmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Lcom/samsung/android/settings/widget/SecRoundButtonView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmDialog(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroid/app/Dialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-static {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->-$$Nest$fgetmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Lcom/samsung/android/settings/widget/SecRoundButtonView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
