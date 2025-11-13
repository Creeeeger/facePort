.class public final Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic $executor:Ljava/util/concurrent/Executor;

.field public final synthetic $listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionFinished$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionFinished$1;-><init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;-><init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionStarted$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionStarted$1;-><init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
