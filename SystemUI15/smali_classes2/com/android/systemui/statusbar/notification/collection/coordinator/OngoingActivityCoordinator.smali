.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;

.field private currentNotifIconCount:I

.field private final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field private final ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final ongoingActivitySectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;

.field private final ongoingSummary:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private final timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingSummary$1;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingSummary$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingSummary:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivitySectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;

    return-void
.end method

.method public static final synthetic access$onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;)V

    return-void
.end method

.method private final onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getShowingIconCount()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->currentNotifIconCount:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->currentNotifIconCount:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingSummary:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderEntryListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentNotifIconCount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->currentNotifIconCount:I

    return p0
.end method

.method public final getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0
.end method

.method public final getOngoingActivityController()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    return-object p0
.end method

.method public final getOngoingActivityHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public final getOngoingActivitySectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->ongoingActivitySectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;

    return-object p0
.end method

.method public final getTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    return-object p0
.end method

.method public final setCurrentNotifIconCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->currentNotifIconCount:I

    return-void
.end method
