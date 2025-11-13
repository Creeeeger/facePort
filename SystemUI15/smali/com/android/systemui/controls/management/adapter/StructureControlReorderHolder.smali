.class public final Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;
.super Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionCallback:Ljava/util/function/Consumer;

.field public final alternativeDescription:Ljava/lang/String;

.field public final emptyStructureName:Ljava/lang/String;

.field public final reorder:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->actionCallback:Ljava/util/function/Consumer;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a09bc

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a09ba

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->reorder:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f13043c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->emptyStructureName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const p2, 0x7f130425

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f130430

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f130476

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->alternativeDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/controls/management/model/ReorderWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->emptyStructureName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/ReorderWrapper;->displayName:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->reorder:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;-><init>(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->alternativeDescription:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
