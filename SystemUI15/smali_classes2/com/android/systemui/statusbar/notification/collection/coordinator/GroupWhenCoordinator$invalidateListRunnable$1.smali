.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->access$getInvalidator$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    move-result-object p0

    const-string v0, "future notification invalidation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method
