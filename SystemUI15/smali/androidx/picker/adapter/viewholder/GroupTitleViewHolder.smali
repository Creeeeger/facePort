.class public final Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;
.super Landroidx/picker/adapter/viewholder/PickerViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundColor$delegate:Lkotlin/Lazy;

.field public final groupTitle:Landroid/widget/LinearLayout;

.field public final label:Landroid/widget/TextView;

.field public final subHeaderStyle:Landroidx/picker/model/GroupTitleStyleData;

.field public final textColor$delegate:Lkotlin/Lazy;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/picker/model/GroupTitleStyleData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->subHeaderStyle:Landroidx/picker/model/GroupTitleStyleData;

    const p2, 0x7f0a0d34

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->title:Landroid/widget/TextView;

    const p2, 0x7f0a05df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->label:Landroid/widget/TextView;

    const p2, 0x7f0a04b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->groupTitle:Landroid/widget/LinearLayout;

    new-instance p1, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;

    invoke-direct {p1, p0}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$backgroundColor$2;-><init>(Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->backgroundColor$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$textColor$2;

    invoke-direct {p1, p0}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder$textColor$2;-><init>(Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->textColor$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 3

    instance-of v0, p1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->title:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/GroupTitleViewData;->appData:Landroidx/picker/model/appdata/GroupAppData;

    iget-object v2, v1, Landroidx/picker/model/appdata/GroupAppData;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->label:Landroid/widget/TextView;

    iget-object v2, v1, Landroidx/picker/model/appdata/GroupAppData;->subLabel:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v1, Landroidx/picker/model/appdata/GroupAppData;->subLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->groupTitle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->backgroundColor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->textColor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;->label:Landroid/widget/TextView;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    return-void
.end method
