.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    sget p1, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->$r8$clinit:I

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f150947

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->getNumOfCheckedList$1()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->getNumOfCheckedList$1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120050

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v0, 0x7f142619

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f1408bf

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;)V

    const p0, 0x7f140c1d

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/16 p0, 0x1fcd

    const/16 p1, 0x1fcf

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p0, 0x0

    return p0
.end method
