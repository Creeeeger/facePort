.class public final Landroidx/picker/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object v0, v0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object v2, v2, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object v2, v2, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
