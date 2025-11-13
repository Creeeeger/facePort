.class final Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $viewData:Landroidx/picker/model/viewdata/ViewData;

.field final synthetic this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Landroidx/picker/model/viewdata/ViewData;)V
    .locals 0

    iput-object p2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    invoke-static {p1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getSubLabelShowState(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Landroidx/picker/model/viewdata/ViewData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getLayoutId(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)I

    move-result v0

    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {v1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {v1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$setCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;I)V

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$adjustLayout(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
