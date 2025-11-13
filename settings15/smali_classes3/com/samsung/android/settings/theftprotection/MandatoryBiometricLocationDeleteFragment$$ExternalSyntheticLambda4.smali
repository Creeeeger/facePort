.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    sget p1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->$r8$clinit:I

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f1408bf

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;)V

    const v2, 0x7f140c1d

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->getCheckedCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120023

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120024

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060866

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p0, 0x0

    return p0
.end method
