.class Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private mPrevDozeAmountIsOne:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->mPrevDozeAmountIsOne:Z

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozeAmountChanged(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->mPrevDozeAmountIsOne:Z

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmDndVisualEffectsFilter(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p2

    if-eqz p1, :cond_1

    const-string v0, "one"

    goto :goto_1

    :cond_1
    const-string v0, "not one"

    :goto_1
    const-string v1, "dozeAmount changed to "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->mPrevDozeAmountIsOne:Z

    :cond_2
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmDndVisualEffectsFilter(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDozingChanged to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method
