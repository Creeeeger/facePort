.class Landroidx/picker3/widget/SeslColorPicker$6;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initColorSpectrumView()V
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

    .line 449
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 478
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$800(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 481
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 483
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 486
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 488
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 457
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$800(Landroidx/picker3/widget/SeslColorPicker;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 459
    :try_start_0
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 460
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 461
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 462
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/picker3/widget/SeslColorPicker;->access$1002(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 463
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroidx/picker3/widget/SeslColorPicker;->access$1102(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    const/16 p2, 0x64

    if-gt p1, p2, :cond_0

    .line 465
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 466
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
