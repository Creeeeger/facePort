.class public abstract Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;-><init>()V

    return-void
.end method

.method public static setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq p1, p2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method
