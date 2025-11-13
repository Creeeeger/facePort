.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;
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
.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final provider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->provider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    return-void
.end method

.method public static final synthetic access$onBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->onBeforeRenderListListener(Ljava/util/List;)V

    return-void
.end method

.method private final markNonDismissibleEntries(Ljava/util/Set;Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isDismissableForState(Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v3

    :cond_1
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-direct {p0, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->markNonDismissibleEntries(Ljava/util/Set;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method private final onBeforeRenderListListener(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->markNonDismissibleEntries(Ljava/util/Set;Ljava/util/List;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;->provider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    monitor-enter p0

    :try_start_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;->nonDismissableEntryKeys:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method
