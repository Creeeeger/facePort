.class Landroidx/picker/widget/SeslDatePicker$2;
.super Landroid/os/Handler;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroid/os/Looper;)V
    .locals 0

    .line 342
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 345
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 346
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 369
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$400(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 371
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    const/4 v1, 0x0

    invoke-static {p1, v1, v2}, Landroidx/picker/widget/SeslDatePicker;->access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 372
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v1, v2}, Landroidx/picker/widget/SeslDatePicker;->access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 374
    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 376
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$900(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 377
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$1000(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    :cond_1
    return-void

    .line 382
    :cond_2
    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 384
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$900(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 385
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$1000(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 388
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_4

    .line 390
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 391
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V

    return-void

    .line 395
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    const v3, 0x3ecccccd    # 0.4f

    if-ne p1, v1, :cond_5

    .line 397
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 398
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 399
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;)V

    return-void

    .line 403
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    if-nez p1, :cond_6

    .line 405
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 406
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 407
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;)V

    goto/16 :goto_1

    .line 408
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v4

    sub-int/2addr v4, v1

    if-ne p1, v4, :cond_b

    .line 410
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 411
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V

    .line 412
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;)V

    goto/16 :goto_1

    .line 349
    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    if-gt p1, v0, :cond_b

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    .line 350
    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_8

    goto :goto_1

    .line 354
    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/picker/widget/SeslDatePicker;->access$200(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$400(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v1

    if-nez v1, :cond_9

    .line 358
    sget v1, Landroidx/picker/R$string;->sesl_date_picker_switch_to_month_day_year_view_description:I

    goto :goto_0

    .line 359
    :cond_9
    sget v1, Landroidx/picker/R$string;->sesl_date_picker_switch_to_calendar_description:I

    .line 357
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$DateValidator;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 362
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 364
    :cond_a
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_1
    return-void
.end method
