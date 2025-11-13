.class public final Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method public constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Void;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    iget-object v1, v0, Lcom/android/settings/ResetNetworkRequest;->mResetEsimPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/ResetNetworkRequest;->toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetEsim(Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V

    :cond_0
    iget-object v0, v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "resetNetwork is started."

    const-string v1, "ResetNetworkConfirm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "subId"

    iget v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    const-string v2, "com.sec.android.settings.permission.NETWORK_RESET"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "resetNetwork is done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "network factoryReset complete. succeeded: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResetNetworkTask"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const p1, 0x7f141ed9

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f141ecf

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const p0, 0x7f141ece

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method
