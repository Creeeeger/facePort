.class Landroidx/picker3/widget/SeslColorPicker$8;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initGradientColorSeekBar()V
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

    .line 512
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 517
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 518
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    const-string p1, "%d"

    const-string v1, ""

    const/4 v2, 0x0

    if-ltz p2, :cond_1

    .line 522
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$1100(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result v3

    if-ne v3, v0, :cond_1

    .line 523
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 526
    :cond_1
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$1400(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$802(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 528
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 530
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1, v2}, Landroidx/picker3/widget/SeslColorPicker;->access$802(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 533
    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 534
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 536
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1000(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 537
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$700(Landroidx/picker3/widget/SeslColorPicker;I)V

    .line 538
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2, v2}, Landroidx/picker3/widget/SeslColorPicker;->access$1002(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 540
    :cond_3
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1500(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 541
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1500(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 543
    :cond_4
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 544
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;

    move-result-object p2

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p3}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getAlpha()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    .line 546
    :cond_5
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1600(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 547
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$1600(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_6
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 553
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$8;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    return-void
.end method
