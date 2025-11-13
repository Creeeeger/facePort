.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private isFiltering:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    const-string p1, "LockscreenHostedDreamFilter"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    return-object p0
.end method


# virtual methods
.method public final isFiltering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering:Z

    return p0
.end method

.method public final setFiltering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering:Z

    return-void
.end method

.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering:Z

    return p0
.end method

.method public final update(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isLockscreenHostedDream$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isOnKeyguard$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->setFiltering(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
