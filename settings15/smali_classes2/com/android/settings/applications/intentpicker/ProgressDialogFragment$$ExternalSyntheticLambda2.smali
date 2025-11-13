.class public final synthetic Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, -0x2

    if-ne p2, p0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    return-void
.end method
