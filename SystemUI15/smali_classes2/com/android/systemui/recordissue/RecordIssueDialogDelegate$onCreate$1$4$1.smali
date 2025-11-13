.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $startButton:Landroid/widget/Button;

.field public final synthetic $this_apply:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->$this_apply:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->$startButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->$this_apply:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1$1;

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;->$startButton:Landroid/widget/Button;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1$1;-><init>(Landroid/widget/Button;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/widget/PopupMenu;

    iget-object v2, p1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->issueTypeButton:Landroid/widget/Button;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget-object v0, Lcom/android/systemui/recordissue/IssueRecordingState;->Companion:Lcom/android/systemui/recordissue/IssueRecordingState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/recordissue/IssueRecordingState;->ALL_ISSUE_TYPES:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080684

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v4, p1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object v4, v4, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, -0x1

    const-string v6, "key_issueTypeRes"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onIssueTypeClicked$2$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
