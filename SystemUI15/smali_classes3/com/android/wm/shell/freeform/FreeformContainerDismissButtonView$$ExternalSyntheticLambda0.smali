.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FreeformContainer"

    const-string v2, "[FreeformContainerDismissButtonView] clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
