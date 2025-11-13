.class public final Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

.field public final synthetic $progress:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    iput p2, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;->$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    iget p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$1$onTransitionProgress$1;->$progress:F

    invoke-interface {v0, p0}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;->onStateChangeProgress(F)V

    return-void
.end method
