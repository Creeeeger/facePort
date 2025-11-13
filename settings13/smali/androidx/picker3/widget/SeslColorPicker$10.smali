.class Landroidx/picker3/widget/SeslColorPicker$10;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initOpacitySeekBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 601
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 605
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 608
    :cond_0
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    if-ltz p2, :cond_1

    .line 609
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3}, Landroidx/picker3/widget/SeslColorPicker;->access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p1, :cond_1

    mul-int/lit8 p2, p2, 0x64

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    .line 610
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 611
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3}, Landroidx/picker3/widget/SeslColorPicker;->access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%d"

    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 616
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1500(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 617
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1500(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 619
    :cond_2
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1600(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 620
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$1600(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_3
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
