.class public final synthetic Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/localepicker/LocaleDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/localepicker/LocaleDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/localepicker/LocaleDialogFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/localepicker/LocaleDialogFragment;

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->mBackCallback:Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
