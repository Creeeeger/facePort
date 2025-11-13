.class Landroidx/picker/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslColorPicker;)V
    .locals 0

    .line 429
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 432
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslColorPicker;->access$500(Landroidx/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 435
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslColorPicker;->access$600(Landroidx/picker/widget/SeslColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 436
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/picker/widget/SeslColorPicker;->access$002(Landroidx/picker/widget/SeslColorPicker;Z)Z

    .line 438
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslColorPicker;->access$500(Landroidx/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 439
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslColorPicker;->access$100(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$PickedColor;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 440
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v3, v2}, Landroidx/picker/widget/SeslColorPicker;->access$700(Landroidx/picker/widget/SeslColorPicker;I)V

    .line 441
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslColorPicker;->access$400(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslColorPicker;->access$400(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
