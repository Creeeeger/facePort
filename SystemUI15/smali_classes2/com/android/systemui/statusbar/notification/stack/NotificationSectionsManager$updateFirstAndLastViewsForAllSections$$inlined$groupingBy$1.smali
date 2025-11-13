.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/collections/Grouping;


# instance fields
.field public final synthetic $this_groupingBy:Lkotlin/sequences/Sequence;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->$this_groupingBy:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot find section bucket for view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sourceIterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->$this_groupingBy:Lkotlin/sequences/Sequence;

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
