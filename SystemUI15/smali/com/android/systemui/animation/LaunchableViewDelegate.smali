.class public final Lcom/android/systemui/animation/LaunchableViewDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public blockVisibilityChanges:Z

.field public lastVisibility:I

.field public final superSetVisibility:Lkotlin/jvm/functions/Function1;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->superSetVisibility:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->lastVisibility:I

    return-void
.end method


# virtual methods
.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->blockVisibilityChanges:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->blockVisibilityChanges:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->lastVisibility:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->lastVisibility:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->superSetVisibility:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_2

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->lastVisibility:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->blockVisibilityChanges:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->lastVisibility:I

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/animation/LaunchableViewDelegate;->superSetVisibility:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
