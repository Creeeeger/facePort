.class public final Lcom/android/systemui/unfold/UnfoldProgressProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;


# instance fields
.field public final foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

.field public final unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider;->unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider;->unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {v1, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$2;

    invoke-direct {v0, p2}, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$2;-><init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/unfold/updates/FoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
