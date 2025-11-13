.class public final Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/IssueRecordingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/IssueRecordingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$1;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$1;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    sget-object v1, Lcom/android/systemui/recordissue/IssueRecordingState;->ALL_ISSUE_TYPES:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "key_issueTypeRes"

    const/4 v3, -0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/traceur/TraceUtils$PresetTraceType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/traceur/TraceUtils$PresetTraceType;->UNSET:Lcom/android/traceur/TraceUtils$PresetTraceType;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.android.traceur.trace_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 p0, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p0, v2}, Lcom/android/systemui/recordissue/TraceurMessageSender;->notifyTraceur$default(Lcom/android/systemui/recordissue/TraceurMessageSender;ILandroid/os/Bundle;Landroid/os/Messenger;I)V

    return-void
.end method
