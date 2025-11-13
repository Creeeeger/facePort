.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unhandled type of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
