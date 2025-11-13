.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;

    iget-object v1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object v2, v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->factory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/recordissue/IssueRecordingState;)V

    invoke-virtual {v0}, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2$1$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
