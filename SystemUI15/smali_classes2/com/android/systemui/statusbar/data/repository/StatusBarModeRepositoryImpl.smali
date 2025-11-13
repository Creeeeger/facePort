.class public final Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/core/StatusBarInitializer$OnStatusBarViewInitializedListener;


# instance fields
.field public final defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryFactory;->create(I)Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusBarViewInitialized(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->onStatusBarViewInitialized(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->commandQueueCallback:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$commandQueueCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
