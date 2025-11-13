.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->onStarted:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
