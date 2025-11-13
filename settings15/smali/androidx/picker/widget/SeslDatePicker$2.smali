.class public final Landroidx/picker/widget/SeslDatePicker$2;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$2;->this$0:Landroidx/picker/widget/SeslDatePicker;

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {p0, p1, v0}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-static {v2, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-static {v2, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142b16

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142b17

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez p1, :cond_3

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    invoke-static {p0, v2, v1}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {p0, v2, v1}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V

    return-void

    :cond_3
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    const v4, 0x3ecccccd    # 0.4f

    if-ne v3, v1, :cond_4

    invoke-static {p0, v4, v0}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {p0, v4, v0}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    return-void

    :cond_4
    if-nez p1, :cond_5

    invoke-static {p0, v4, v0}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {p0, v2, v1}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    goto/16 :goto_1

    :cond_5
    sub-int/2addr v3, v1

    if-ne p1, v3, :cond_a

    invoke-static {p0, v2, v1}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-static {p0, v4, v0}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    if-gt p1, v0, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {p0, v0}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$000(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez v1, :cond_9

    const v1, 0x7f142b1a

    goto :goto_0

    :cond_9
    const v1, 0x7f142b19

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_1
    return-void
.end method
