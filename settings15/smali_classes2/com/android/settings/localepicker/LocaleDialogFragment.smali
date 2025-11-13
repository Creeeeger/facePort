.class public Lcom/android/settings/localepicker/LocaleDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mBackCallback:Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

.field public mBackDispatcher:Landroid/window/OnBackInvokedDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/localepicker/LocaleDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    new-instance v0, Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackCallback:Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public getBackInvokedCallback()Landroid/window/OnBackInvokedCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackCallback:Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "arg_dialog_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x7e6

    return p0

    :cond_0
    const/16 p0, 0x7e7

    return p0
.end method

.method public getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;

    invoke-direct {p1, p0}, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;-><init>(Lcom/android/settings/localepicker/LocaleDialogFragment;)V

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->getDialogContent()Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d045d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    const v3, 0x7f0a0529

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    const v3, 0x7f0a0522

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    iget-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDialogFragment;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackCallback:Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/localepicker/LocaleDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public setBackDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackDispatcher:Landroid/window/OnBackInvokedDispatcher;

    return-void
.end method
