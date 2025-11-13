.class public abstract Landroidx/picker/features/composable/ActionableComposableViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H\u0011\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H\u0017R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "Landroidx/picker/features/composable/ComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "doAction",
        "Landroidx/core/util/Supplier;",
        "",
        "getDoAction",
        "()Landroidx/core/util/Supplier;",
        "setDoAction",
        "(Landroidx/core/util/Supplier;)V",
        "bindData",
        "",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "onBind",
        "itemView",
        "onBind$picker_app_release",
        "onViewRecycled",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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
    .locals 1

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Landroidx/picker/features/composable/ActionableComposableViewHolder;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
