.class public final Lcom/android/settings/development/AdbWirelessDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIpAddr:Landroid/widget/TextView;

.field public final mSixDigitCode:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    invoke-interface {p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0b17

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    const v1, 0x7f0a0814

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    const v3, 0x7f141b4c

    const v4, 0x7f140287

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    check-cast p3, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p3, v4}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    const p3, 0x7f0a085a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/development/AdbWirelessDialog;

    invoke-virtual {p1, v2, p0, p1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    const p3, 0x7f140286

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    const v1, 0x7f0a0857

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0a0b18

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/development/AdbWirelessDialog;

    invoke-virtual {p1, v2, p0, p1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const p3, 0x7f140289

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, p3}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0858

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f1408bf

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/development/AdbWirelessDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p3, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCanceledOnTouchOutside(Z)V

    :goto_0
    const p0, 0x7f0a084f

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
