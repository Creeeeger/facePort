.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

.field public static final APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

.field public static final TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

.field public static final VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;


# instance fields
.field public final mDividers:Ljava/util/HashSet;

.field public final mProcessors:Ljava/util/ArrayList;

.field public final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$BadgeComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$BadgeComparator;-><init>(I)V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>(I)V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$4;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    const v4, 0x10201fa

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    sget-object v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsGroupHeaderContainAtMark:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContractedHeaderContainAtMark:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsExpandedHeaderContainAtMark:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v6, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    const/4 v3, 0x0

    const v2, 0x1020346

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    const v0, 0x1020347

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    const v0, 0x1020349

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    const p1, 0x1020652

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x102064e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v4, v1, :cond_2

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->showsTime()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const v2, 0x1020464

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_7
    return-void
.end method
