.class final Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getTitleView$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    invoke-static {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getHighlightColor(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I

    move-result p0

    invoke-static {v0, p1, p0}, Landroidx/picker/helper/TextViewHelperKt;->setHighLightText(Landroid/widget/TextView;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
