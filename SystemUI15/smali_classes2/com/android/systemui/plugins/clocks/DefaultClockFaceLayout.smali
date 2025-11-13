.class public final Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockFaceLayout;


# instance fields
.field private final view:Landroid/view/View;

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->view:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public applyAodBurnIn(Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;)V
    .locals 0

    return-void
.end method

.method public applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->getViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should have only one container view when using DefaultClockFaceLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyPreviewConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0

    return-object p1
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->view:Landroid/view/View;

    return-object p0
.end method

.method public getViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->views:Ljava/util/List;

    return-object p0
.end method
