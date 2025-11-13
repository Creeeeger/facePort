.class Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$5;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p2

    if-nez p0, :cond_1

    :cond_0
    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0x100

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method
