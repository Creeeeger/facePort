.class final Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;->this$0:Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;->this$0:Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;->this$0:Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->subHeaderStyle:Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {p0}, Landroidx/picker/model/GroupTitleStyleData;->getBackgroundColorId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
