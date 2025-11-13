.class public final Landroidx/picker/widget/SeslAppPickerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerView;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslAppPickerView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$1;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget p2, p0, Landroidx/picker/widget/SeslAppPickerView$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$1;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$1;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
