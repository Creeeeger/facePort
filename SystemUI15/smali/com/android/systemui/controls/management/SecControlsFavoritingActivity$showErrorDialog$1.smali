.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v0, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v0, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130478

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x7f140560

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v5, 0x7f13047a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v5, 0x7f130479

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$2;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v5, 0x7f13042b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$3;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
