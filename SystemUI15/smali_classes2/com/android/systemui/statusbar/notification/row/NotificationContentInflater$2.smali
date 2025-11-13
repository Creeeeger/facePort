.class public final Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;
.super Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRemoteView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final setResultView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "expanded view applied"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-void
.end method
