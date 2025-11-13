.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private channelArray:[Ljava/lang/String;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private pkgArray:[Ljava/lang/String;

.field private final sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final sectionerForPriority:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final timeComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const-string p1, "com.skt.prod.dialer"

    const-string p2, "com.android.systemui"

    const-string p3, "com.samsung.android.incallui"

    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->pkgArray:[Ljava/lang/String;

    const-string p1, "NO_HUN_CHANNEL_CALL_CONTROL"

    const-string p2, "ZEN_ONGOING"

    const-string p3, "Ongoing_call"

    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->channelArray:[Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectionerForPriority:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$timeComparator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$timeComparator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->timeComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    return-void
.end method

.method public static final synthetic access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final synthetic access$getTime(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getTimeCompare(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeCompare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isIncludedPriortyList(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->isIncludedPriortyList(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sortChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sortChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;)V

    return-void
.end method

.method private final calculateGroupNotificationTime(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    new-instance v4, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v4, v3, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {v2, v4}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v3

    move-wide v9, v5

    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sub-long v13, p2, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    cmp-long v2, v7, v3

    if-nez v2, :cond_2

    cmp-long v2, v9, v5

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    cmp-long v0, v9, v5

    if-eqz v0, :cond_3

    move-wide v7, v9

    :cond_3
    return-wide v7
.end method

.method private final calculateRepresentativeNotificationTime(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)J
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->calculateGroupNotificationTime(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide v2, p0, Landroid/app/Notification;->when:J

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    return-wide v2

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    return-wide p0
.end method

.method private final getTimeCompare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->calculateRepresentativeNotificationTime(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->calculateRepresentativeNotificationTime(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)J

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private final isIncludedPriortyList(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->pkgArray:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    goto :goto_1

    :cond_0
    move-object v8, v7

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->channelArray:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_3
    return v2
.end method

.method private final sortChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;)V
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    return-void
.end method

.method public final getChannelArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->channelArray:[Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->pkgArray:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public final getSectionerForPriority()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectionerForPriority:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public final getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->timeComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    return-object p0
.end method

.method public final setChannelArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->channelArray:[Ljava/lang/String;

    return-void
.end method

.method public final setPkgArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->pkgArray:[Ljava/lang/String;

    return-void
.end method
