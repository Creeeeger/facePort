.class public abstract Landroidx/picker/features/composable/ActionableComposableViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private doAction:Landroidx/core/util/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Supplier;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$84PE-HPZ_Bs_49T6a-e1Nf0TJIY(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$lambda$0(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end method

.method public getDoAction()Landroidx/core/util/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Supplier;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/ActionableComposableViewHolder;->doAction:Landroidx/core/util/Supplier;

    return-object p0
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/picker/features/composable/ActionableComposableViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/ActionableComposableViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    return-void
.end method

.method public setDoAction(Landroidx/core/util/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Supplier;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/features/composable/ActionableComposableViewHolder;->doAction:Landroidx/core/util/Supplier;

    return-void
.end method
