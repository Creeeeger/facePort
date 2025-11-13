.class public final synthetic Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
