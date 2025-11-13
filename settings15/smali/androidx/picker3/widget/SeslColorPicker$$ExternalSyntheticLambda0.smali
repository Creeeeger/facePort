.class public final synthetic Landroidx/picker3/widget/SeslColorPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$$ExternalSyntheticLambda0;->f$0:Landroidx/picker3/widget/SeslColorPicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$$ExternalSyntheticLambda0;->f$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnEyeDropperListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v1, p1, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;->f$0:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroidx/picker/eyeDropper/SeslBitmapHolder;->sBitmapWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method
