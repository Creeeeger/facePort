.class final Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$2$1;
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
.field final synthetic this$0:Landroidx/picker/adapter/viewholder/GridViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/viewholder/GridViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$2$1;->this$0:Landroidx/picker/adapter/viewholder/GridViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$2$1;->this$0:Landroidx/picker/adapter/viewholder/GridViewHolder;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->gridItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f080d82

    goto :goto_0

    :cond_0
    const p1, 0x7f080d81

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
