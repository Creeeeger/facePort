.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;
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
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$pickOutTopUnseenNotifs$nonSummaryEntries$2;->invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
