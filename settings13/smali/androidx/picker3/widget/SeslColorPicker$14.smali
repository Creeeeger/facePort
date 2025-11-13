.class Landroidx/picker3/widget/SeslColorPicker$14;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->setTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V
    .locals 0

    .line 715
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 733
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 735
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xff

    if-le p1, v3, :cond_4

    .line 737
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "255"

    if-ne p1, v3, :cond_0

    .line 738
    :try_start_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1800(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    :cond_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 741
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1900(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 744
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1700(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 748
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 749
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "0"

    if-ne p1, v1, :cond_2

    .line 750
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1800(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 754
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1900(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 757
    :cond_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 758
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1700(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1, v2}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 763
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1, v2}, Landroidx/picker3/widget/SeslColorPicker;->access$1402(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 764
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1800(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1800(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 765
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1900(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1900(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 766
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->access$1700(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$1700(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 718
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->access$2002(Landroidx/picker3/widget/SeslColorPicker;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 724
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 725
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker;->access$2000(Landroidx/picker3/widget/SeslColorPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$14;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$2100(Landroidx/picker3/widget/SeslColorPicker;)V

    :cond_1
    :goto_0
    return-void
.end method
