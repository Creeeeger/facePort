.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public final mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public mOnMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field public final mResources:Landroid/content/res/Resources;

.field public final mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mViewConfiguration:Landroid/view/ViewConfiguration;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    return-void
.end method
