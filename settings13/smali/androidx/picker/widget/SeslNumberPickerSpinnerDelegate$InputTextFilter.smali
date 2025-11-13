.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2971
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    .line 2987
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 2988
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2990
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2993
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2994
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2996
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 2999
    :cond_1
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result p2

    .line 3008
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    invoke-static {p2, p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    .line 3009
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3010
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3011
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    .line 3013
    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    return-object v1

    .line 3020
    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3021
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3022
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p3

    invoke-interface {p4, p6, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3023
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 3024
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p3

    .line 3025
    iget-object p4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object p4

    array-length p5, p4

    :goto_1
    if-ge v2, p5, :cond_a

    aget-object p6, p4, v2

    .line 3026
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p6

    if-eqz p3, :cond_7

    .line 3027
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {p6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_9

    :cond_8
    return-object p1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3031
    :cond_a
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 3032
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_b

    .line 3033
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    .line 3035
    :cond_b
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    return-object v1
.end method

.method protected getAcceptedChars()[C
    .locals 0

    .line 2981
    invoke-static {}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2700()[C

    move-result-object p0

    return-object p0
.end method

.method public getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
