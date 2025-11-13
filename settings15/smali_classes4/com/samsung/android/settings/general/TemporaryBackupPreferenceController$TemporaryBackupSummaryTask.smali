.class public final Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;->access$000(Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/general/GeneralUtils;->getTemporaryBackupBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "support"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "status"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intro_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "GeneralUtils"

    const-string p1, "isSupportTemporaryBackup = false"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, ""

    move-object p0, p1

    :goto_0
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/util/Pair;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, "BACKUP_RUNNING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;->access$100(Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142ea6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "BACKUP_COMPLETED"

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;->access$200(Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142ea4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "BACKUP_NON_FINISHED"

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;->access$300(Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142ea5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController$TemporaryBackupSummaryTask;->this$0:Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/general/TemporaryBackupPreferenceController;->updateSummary(Ljava/lang/String;)V

    return-void
.end method
