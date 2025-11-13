.class Lcom/android/settings/MainClearConfirm$2;
.super Ljava/lang/Object;
.source "MainClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClearConfirm;


# direct methods
.method static bridge synthetic -$$Nest$mgetProgressDialog(Lcom/android/settings/MainClearConfirm$2;)Landroid/app/ProgressDialog;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MainClearConfirm$2;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 268
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    .line 272
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->main_clear_progress_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->main_clear_progress_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ro.frp.pst"

    .line 199
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MainClearConfirm;->-$$Nest$misPowerOffAllowedByMDM(Lcom/android/settings/MainClearConfirm;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "MainClearConfirm"

    const-string p1, "doSecMainClear blocked by MDM "

    .line 206
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/MainClearConfirm;->-$$Nest$msendAuditLog(Lcom/android/settings/MainClearConfirm;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MainClearConfirm;->-$$Nest$mnotifyUCS(Lcom/android/settings/MainClearConfirm;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    .line 218
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "persistent_data_block"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 220
    iget-object v0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-virtual {v0, p1}, Lcom/android/settings/MainClearConfirm;->shouldWipePersistentDataBlock(Landroid/service/persistentdata/PersistentDataBlockManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Lcom/android/settings/MainClearConfirm$2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MainClearConfirm$2$1;-><init>(Lcom/android/settings/MainClearConfirm$2;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 257
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 260
    :cond_3
    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$2;->this$0:Lcom/android/settings/MainClearConfirm;

    invoke-static {p0}, Lcom/android/settings/MainClearConfirm;->-$$Nest$mdoSecMainClear(Lcom/android/settings/MainClearConfirm;)V

    :goto_0
    return-void
.end method
