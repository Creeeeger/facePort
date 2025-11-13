.class public final Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public final listeners:Ljava/util/Set;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

.field public session:Landroid/app/smartspace/SmartspaceSession;

.field public final sessionListener:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;

.field public final smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/smartspace/SmartspaceManager;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/smartspace/SmartspacePrecondition;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    iput-object p3, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    iput-object p4, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

    const/4 p1, 0x0

    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p2, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {p6, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->listeners:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$preconditionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$preconditionListener$1;-><init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;)V

    check-cast p5, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    iget-object p2, p5, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->listeners:Ljava/util/Set;

    monitor-enter p2

    :try_start_0
    iget-object p3, p5, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->listeners:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$preconditionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object p1, p1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_0
    new-instance p1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$filterListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$filterListener$1;-><init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;)V

    new-instance p1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;-><init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;)V

    iput-object p1, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->sessionListener:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
