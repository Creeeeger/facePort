.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;
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
.field private final activeNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

.field private final groupExpansionManagerImpl:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

.field private final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final renderListInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/RenderNotificationListInteractor;

.field private final sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/notification/domain/interactor/RenderNotificationListInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->groupExpansionManagerImpl:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->renderListInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/RenderNotificationListInteractor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->activeNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    return-void
.end method

.method private final calculateNotifStats(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->sensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result p0

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v2, v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    const/16 v3, 0xd

    const/4 v9, 0x1

    if-ne v2, v3, :cond_1

    move v2, v9

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez p0, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v9

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    move v6, v9

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    move v5, v9

    goto :goto_0

    :cond_5
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    move v4, v9

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Null notif entry for "

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Null section for "

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;-><init>(IZZZZ)V

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnAfterRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->groupExpansionManagerImpl:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->mNotifTracker:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method

.method public final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "StackCoordinator.onAfterRenderList"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->calculateNotifStats(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;->setNotifStats(Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method
