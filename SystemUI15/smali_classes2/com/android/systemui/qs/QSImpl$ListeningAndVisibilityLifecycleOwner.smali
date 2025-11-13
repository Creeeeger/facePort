.class Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public mDestroyed:Z

.field public final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->this$0:Lcom/android/systemui/qs/QSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->updateState()V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final updateState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->this$0:Lcom/android/systemui/qs/QSImpl;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    if-nez v0, :cond_1

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    if-nez p0, :cond_2

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :cond_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
