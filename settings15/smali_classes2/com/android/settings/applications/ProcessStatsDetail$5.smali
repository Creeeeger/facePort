.class public final Lcom/android/settings/applications/ProcessStatsDetail$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/ProcessStatsDetail;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    return-void
.end method
