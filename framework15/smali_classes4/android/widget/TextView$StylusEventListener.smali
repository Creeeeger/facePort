.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private blacklist mEndCurPosition:I

.field private blacklist mIsSelectableTextView:Z

.field private blacklist mMaxX:F

.field private blacklist mPressed:Z

.field private blacklist mStartCurPosition:I

.field private blacklist mStartX:F

.field private blacklist mStartY:F

.field private blacklist mThisView:Landroid/widget/TextView;

.field private blacklist oldEndPos:I

.field private blacklist selectRange:[I

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEndCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public whitelist onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 14

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-$$Nest$fgetmEnableMultiSelection(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_c

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmIsFindTargetView()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_3

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_2
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mcanTextMultiSelection(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$sfputmCurTime(J)V

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    if-eq v6, v4, :cond_4

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v6

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    :cond_4
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmLastHoveredViewId(I)V

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    :cond_5
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_b

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v4, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    if-eq v4, v6, :cond_7

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v4, v6, :cond_7

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void

    :cond_7
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_8

    return-void

    :cond_8
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hideCursorControllers()V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4, v6, v7, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_9
    return-void

    :cond_a
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v4, v6, v7, v8}, Landroid/widget/TextView;->-$$Nest$mcheckPosOnText(Landroid/widget/TextView;III)Z

    move-result v4

    if-nez v4, :cond_d

    return-void

    :cond_b
    :goto_0
    return-void

    :cond_c
    invoke-static {v1}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_36

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-ne v6, v4, :cond_d

    goto/16 :goto_b

    :cond_d
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    return-void

    :cond_e
    const/4 v6, 0x0

    const-string v7, "TextView"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_10

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_f

    move v1, v5

    :cond_f
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    :cond_10
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v1, :cond_35

    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-static {v1, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_a

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1a

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v6, :cond_35

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v10, v2

    float-to-int v11, v3

    invoke-static {v9, v10, v11, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v9

    invoke-static {v9}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_11
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_13

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v1

    if-ge v9, v10, :cond_12

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v9, v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_1

    :cond_12
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v5

    if-le v1, v9, :cond_13

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v1, v5

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_13
    :goto_1
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v1, v9, :cond_14

    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_35

    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_a

    :cond_14
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-eq v1, v9, :cond_19

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v1, :cond_19

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmHighlightPathBogus(Landroid/widget/TextView;Z)V

    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_17

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_15

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_15
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_16

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_16
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto :goto_2

    :cond_17
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    :cond_18
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v5, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_19
    :goto_2
    goto/16 :goto_a

    :cond_1a
    :sswitch_2
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget v10, v8, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1b

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_1b
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v11, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v11, :cond_1d

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v12, v12, v1

    if-ge v11, v12, :cond_1c

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v11, v1

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_3

    :cond_1c
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v12, v12, v5

    if-le v11, v12, :cond_1d

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v11, v5

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1d
    :goto_3
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v12

    if-eqz v12, :cond_1f

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v12

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v13

    if-ne v12, v13, :cond_1e

    move v12, v5

    goto :goto_4

    :cond_1e
    move v12, v1

    :goto_4
    move v11, v12

    :cond_1f
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_21

    if-eqz v11, :cond_21

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_21

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    :cond_20
    new-instance v5, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {v5, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_a

    :cond_21
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v6, v12, :cond_24

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_23

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_22

    move v1, v5

    :cond_22
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    :cond_23
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    :cond_24
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-le v6, v12, :cond_25

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_25
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_26

    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v6, v12, v13}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v6, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v6

    const-string v12, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string v6, "Pen up with side button! : end text selection"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_6

    :cond_26
    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v5, :cond_28

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v5, :cond_28

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v5, :cond_28

    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v5, :cond_27

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_27
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iput-boolean v1, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_28
    :goto_6
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_a

    :sswitch_3
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_29

    goto/16 :goto_a

    :cond_29
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mhideMultiSelectPopupWindow(Landroid/widget/TextView;)V

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_2a

    goto :goto_7

    :cond_2a
    move v8, v1

    goto :goto_8

    :cond_2b
    :goto_7
    move v8, v5

    :goto_8
    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v9, :cond_32

    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v9, :cond_31

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_31

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastPenDownTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_2d

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    :cond_2c
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    goto/16 :goto_a

    :cond_2d
    invoke-static {v5}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, v9, v1

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    aput v10, v9, v5

    :cond_2e
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v1

    if-ge v9, v10, :cond_2f

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v1

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_9

    :cond_2f
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v5

    if-le v9, v10, :cond_30

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v5

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_30
    :goto_9
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    const-string v9, "Pen down with side button! : start text selection"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iput-boolean v5, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    :cond_32
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v5, :cond_34

    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v5

    if-lez v5, :cond_34

    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-lt v7, v5, :cond_33

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-le v7, v6, :cond_34

    :cond_33
    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v6}, Landroid/text/MultiSelection;->addMultiSelection(Landroid/text/Spannable;II)V

    :cond_34
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    nop

    :cond_35
    :goto_a
    return-void

    :cond_36
    :goto_b
    return-void

    :cond_37
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xd6 -> :sswitch_0
    .end sparse-switch
.end method
