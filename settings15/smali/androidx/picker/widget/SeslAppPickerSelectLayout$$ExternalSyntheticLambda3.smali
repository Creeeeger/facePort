.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v0
.end method
