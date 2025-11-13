.class public final synthetic Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/loader/select/SelectableItem;

.field public final synthetic f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    iput-object p2, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method
