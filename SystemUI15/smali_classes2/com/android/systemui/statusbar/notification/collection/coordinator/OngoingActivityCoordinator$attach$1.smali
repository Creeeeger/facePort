.class final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$attach$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderEntryListener;


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->access$onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;)V

    return-void
.end method
