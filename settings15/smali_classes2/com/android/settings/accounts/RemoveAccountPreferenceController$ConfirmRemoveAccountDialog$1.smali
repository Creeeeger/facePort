.class public final Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    iget-object p1, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    iget-object p1, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    iget-object p2, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a028a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    iget-object p1, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    iget-object p1, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    iget-object p2, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a028a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    check-cast p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
