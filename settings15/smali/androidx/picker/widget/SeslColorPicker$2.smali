.class public final Landroidx/picker/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslColorPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    sget p3, Landroidx/picker/widget/SeslColorPicker;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p2, p3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    iget-object p2, p1, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    iget-object p2, p2, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    iget-object p1, p1, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
