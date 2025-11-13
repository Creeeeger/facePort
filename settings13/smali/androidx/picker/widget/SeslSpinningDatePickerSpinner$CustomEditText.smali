.class Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;
.super Landroid/widget/EditText;
.source "SeslSpinningDatePickerSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomEditText"
.end annotation


# instance fields
.field private mAdjustEditTextPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 761
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;->mAdjustEditTextPosition:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method setEditTextPosition(I)V
    .locals 0

    .line 756
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;->mAdjustEditTextPosition:I

    return-void
.end method
