.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    iput p5, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderHeight:I

    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eqz p1, :cond_1

    sub-int/2addr p5, p3

    iput p5, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleHeight:I

    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eqz p1, :cond_2

    sub-int/2addr p5, p3

    iput p5, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeight:I

    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
