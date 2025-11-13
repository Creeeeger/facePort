.class public final synthetic Lcom/android/settings/localepicker/LocaleDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    sget p0, Lcom/android/settings/localepicker/LocaleDialogFragment;->$r8$clinit:I

    const-string p0, "LocaleDialogFragment"

    const-string v0, "Do not back to previous page if the dialog is displaying."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
