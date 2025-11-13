.class public final Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public volatile mFeedbackEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIcons:Landroid/util/SparseArray;

.field public final mPropertiesChangedListener:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "systemui"

    const-string v0, "enable_nas_feedback"

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mIcons:Landroid/util/SparseArray;

    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    const p3, 0x1080428

    const v0, 0x1040929

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    const p3, 0x108042b

    const v0, 0x104092c

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    const p3, 0x108042c

    const v0, 0x104092b

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    const p3, 0x1080429

    const v0, 0x104092a

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 5

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_1

    if-lt v1, v3, :cond_1

    return v2

    :cond_1
    if-lt p1, v3, :cond_2

    if-ge v1, v3, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-lt p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_1

    :cond_3
    if-gt p1, v1, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    return v3
.end method
