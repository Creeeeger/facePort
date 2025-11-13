.class public final synthetic Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", num_remains="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
