.class public final Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionStarted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionStarted$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionStarted$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-interface {p0}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;->onStateChangeStarted()V

    return-void
.end method
