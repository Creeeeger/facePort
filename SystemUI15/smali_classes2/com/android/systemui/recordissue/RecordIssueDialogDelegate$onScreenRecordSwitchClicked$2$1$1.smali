.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2$1$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2$1$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->screenRecordSwitch:Landroid/widget/Switch;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
