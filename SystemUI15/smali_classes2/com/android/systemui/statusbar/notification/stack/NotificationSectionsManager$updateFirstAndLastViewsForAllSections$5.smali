.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v1, p0, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    return-void
.end method
