.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;->access$onAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;Ljava/util/List;)V

    return-void
.end method
