.class Landroidx/picker3/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initCurrentColorView()V
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

    .line 321
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$2;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 324
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$2;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$2;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$2;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
