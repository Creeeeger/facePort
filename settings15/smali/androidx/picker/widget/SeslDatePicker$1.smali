.class public final Landroidx/picker/widget/SeslDatePicker$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslDatePicker;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$1;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$1;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->setEditTextMode()V

    :cond_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$1;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
