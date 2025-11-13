.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;
.super Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;",
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public percent:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog$2()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a062e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;->percent:Landroid/widget/TextView;

    const v2, 0x7f0a0456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const v2, 0x7f14043a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const v1, 0x7f140440

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$task$1;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/AsyncTask;->execute(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
