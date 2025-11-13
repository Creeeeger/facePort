.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;
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
.field private final debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

.field private final filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    return-void
.end method

.method public static final synthetic access$getDebugModeFilterProvider$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    return-object p0
.end method

.method public static final synthetic access$getFilter$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->registerInvalidationListener(Ljava/lang/Runnable;)V

    return-void
.end method
