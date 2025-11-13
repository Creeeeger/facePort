.class public final Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/IssueRecordingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/IssueRecordingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$2;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$2;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/systemui/recordissue/TraceurMessageSender;->notifyTraceur$default(Lcom/android/systemui/recordissue/TraceurMessageSender;ILandroid/os/Bundle;Landroid/os/Messenger;I)V

    return-void
.end method
