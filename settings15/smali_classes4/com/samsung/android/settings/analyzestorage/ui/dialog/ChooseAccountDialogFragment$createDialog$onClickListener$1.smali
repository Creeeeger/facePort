.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $items:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->$items:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-ne p1, v0, :cond_0

    const-string p1, "com.sec.android.app.myfiles.ENTER_GOOGLE_DRIVE"

    goto :goto_0

    :cond_0
    const-string p1, "com.sec.android.app.myfiles.ENTER_ONEDRIVE"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->$items:[Ljava/lang/String;

    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ui.AnalyzeStorageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "account"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "open_cloud_from_manage_storage"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;->onOk()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->clearDataFromViewModel()V

    :cond_1
    return-void
.end method
