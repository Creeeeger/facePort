.class public final Lcom/android/settings/MainClearConfirm$2;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mOldOrientation:I

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public final synthetic this$0:Lcom/android/settings/MainClearConfirm;

.field public final synthetic val$isNeededToResetDigitalKey:Z

.field public final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/MainClearConfirm;Landroid/service/persistentdata/PersistentDataBlockManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    iput-object p2, p0, Lcom/android/settings/MainClearConfirm$2;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-boolean p3, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPostExecute: is digitalKey present "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    const-string v1, "MainClearConfirm"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/MainClearConfirm$2;->mOldOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-boolean p1, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->resetDigitalKey()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p0}, Lcom/android/settings/MainClearConfirm;->doSecMainClear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreExecute: is digitalKey present "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    const-string v2, "MainClearConfirm"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/MainClearConfirm$2;->val$isNeededToResetDigitalKey:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    sget-object v1, Lcom/android/settings/MainClearConfirm;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1416ce

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f1416cd

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/MainClearConfirm$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MainClearConfirm$2;->mOldOrientation:I

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
