.class Landroidx/picker3/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initColorSwatchView()V
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

    .line 409
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSwatchChanged(I)V
    .locals 3

    .line 412
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 414
    :try_start_0
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$400(Landroidx/picker3/widget/SeslColorPicker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 415
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    :goto_0
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v1}, Landroidx/picker3/widget/SeslColorPicker;->access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setColorWithAlpha(II)V

    .line 420
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$600(Landroidx/picker3/widget/SeslColorPicker;)V

    .line 421
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$4;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$700(Landroidx/picker3/widget/SeslColorPicker;I)V

    return-void
.end method
