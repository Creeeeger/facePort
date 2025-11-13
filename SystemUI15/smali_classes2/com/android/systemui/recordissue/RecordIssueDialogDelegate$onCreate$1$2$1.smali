.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object p1, p1, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_recordScreen"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
