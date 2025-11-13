.class public final synthetic Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
    .locals 1

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    const-string v0, "$selectableItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method
