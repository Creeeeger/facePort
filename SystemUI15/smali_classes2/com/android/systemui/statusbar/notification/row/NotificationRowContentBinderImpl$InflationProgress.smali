.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public inflatedContentView:Landroid/view/View;

.field public inflatedExpandedView:Landroid/view/View;

.field public inflatedHeadsUpView:Landroid/view/View;

.field public inflatedPublicView:Landroid/view/View;

.field public inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

.field public final packageContext:Landroid/content/Context;

.field public final remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;Lcom/android/systemui/statusbar/notification/row/shared/NotificationContentModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    return-void
.end method
