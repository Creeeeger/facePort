.class Landroidx/picker/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslColorPicker;->initOpacitySeekBar()V
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

    .line 237
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 241
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslColorPicker;->access$002(Landroidx/picker/widget/SeslColorPicker;Z)Z

    .line 244
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorPicker;->access$100(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 246
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslColorPicker;->access$100(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 248
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker/widget/SeslColorPicker;->access$300(Landroidx/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 249
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker/widget/SeslColorPicker;->access$300(Landroidx/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 251
    :cond_1
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker/widget/SeslColorPicker;->access$400(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 252
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$2;->this$0:Landroidx/picker/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslColorPicker;->access$400(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
