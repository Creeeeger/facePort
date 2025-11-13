.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic $onIssueTypeSelected:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;->$onIssueTypeSelected:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->issueTypeButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "key_issueTypeRes"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    iget-object p1, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;->$onIssueTypeSelected:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method
