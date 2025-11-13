.class public final synthetic Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iput-boolean p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    return-void
.end method
