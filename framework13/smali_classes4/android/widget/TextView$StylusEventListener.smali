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
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 17698
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17686
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17687
    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 17688
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17689
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17690
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17691
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 17693
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 17694
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 17695
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17696
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 17699
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 17700
    return-void
.end method


# virtual methods
.method public whitelist onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 17703
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 17704
    return-void

    .line 17707
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 17709
    .local v0, "action":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-$$Nest$fgetmEnableMultiSelection(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_c

    .line 17713
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 17714
    .local v2, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 17716
    .local v3, "rawY":F
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_3

    :cond_2
    const/16 v6, 0xd3

    if-ne v0, v6, :cond_e

    .line 17719
    :cond_3
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmIsFindTargetView()Z

    move-result v6

    if-nez v6, :cond_7

    .line 17720
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_5

    .line 17721
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v6, :cond_4

    .line 17722
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 17724
    :cond_4
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 17726
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mcanTextMultiSelection(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$sfputmCurTime(J)V

    .line 17728
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    if-eq v6, v4, :cond_6

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v6

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 17729
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 17732
    :cond_6
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmLastHoveredViewId(I)V

    .line 17733
    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 17735
    :cond_7
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_d

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v4, :cond_8

    goto :goto_0

    .line 17738
    :cond_8
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    if-eq v4, v6, :cond_9

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v4, v6, :cond_9

    .line 17739
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 17740
    return-void

    .line 17743
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_a

    .line 17744
    return-void

    .line 17746
    :cond_a
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_c

    .line 17747
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 17748
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4, v6, v7, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-nez v4, :cond_f

    .line 17749
    :cond_b
    return-void

    .line 17752
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v4, v6, v7, v8}, Landroid/widget/TextView;->-$$Nest$mcheckPosOnText(Landroid/widget/TextView;III)Z

    move-result v4

    if-nez v4, :cond_f

    .line 17753
    return-void

    .line 17736
    :cond_d
    :goto_0
    return-void

    .line 17758
    :cond_e
    invoke-static {v1}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 17759
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_38

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-ne v6, v4, :cond_f

    goto/16 :goto_b

    .line 17764
    :cond_f
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    .line 17765
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    return-void

    .line 17767
    :cond_10
    const/4 v6, 0x0

    const-string v7, "TextView"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_a

    .line 18011
    :sswitch_0
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 18012
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 18014
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_12

    .line 18015
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 18016
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 18017
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_11

    move v1, v5

    :cond_11
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    .line 18019
    :cond_12
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 18020
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v1, :cond_37

    .line 18021
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_a

    .line 17834
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1c

    .line 17835
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v6, :cond_37

    .line 17836
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v6

    .line 17837
    .local v6, "startPos":Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    .line 17838
    .local v7, "endX":F
    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    .line 17840
    .local v8, "endY":F
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v10, v2

    float-to-int v11, v3

    invoke-static {v9, v10, v11, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v9

    invoke-static {v9}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17842
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_13

    .line 17843
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17846
    :cond_13
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17847
    iget-boolean v10, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v10, :cond_15

    .line 17848
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v11, v1

    if-ge v9, v1, :cond_14

    .line 17849
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_1

    .line 17851
    :cond_14
    aget v1, v11, v5

    if-le v9, v1, :cond_15

    .line 17852
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17856
    :cond_15
    :goto_1
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v1, v9, :cond_16

    .line 17857
    if-nez v10, :cond_37

    .line 17858
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_a

    .line 17863
    :cond_16
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    if-eq v1, v9, :cond_1b

    if-ltz v9, :cond_1b

    .line 17864
    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17865
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmHighlightPathBogus(Landroid/widget/TextView;Z)V

    .line 17866
    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_19

    .line 17867
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_17

    .line 17868
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17870
    :cond_17
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_18

    .line 17871
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17873
    :cond_18
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 17874
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto :goto_2

    .line 17876
    :cond_19
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 17877
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 17879
    :cond_1a
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v5, v9}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 17882
    .end local v6    # "startPos":Landroid/graphics/Point;
    .end local v7    # "endX":F
    .end local v8    # "endY":F
    :cond_1b
    :goto_2
    goto/16 :goto_a

    .line 17892
    :cond_1c
    :sswitch_2
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 17893
    .local v8, "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    .line 17894
    .local v9, "endX":F
    iget v10, v8, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    .line 17896
    .local v10, "endY":F
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1d

    .line 17897
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17899
    :cond_1d
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17900
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_1f

    .line 17901
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v13, v12, v1

    if-ge v11, v13, :cond_1e

    .line 17902
    iput v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_3

    .line 17903
    :cond_1e
    aget v12, v12, v5

    if-le v11, v12, :cond_1f

    .line 17904
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17908
    :cond_1f
    :goto_3
    const/4 v11, 0x0

    .line 17909
    .local v11, "isSameLine":Z
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v12

    if-eqz v12, :cond_21

    .line 17910
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v12

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v13

    if-ne v12, v13, :cond_20

    move v12, v5

    goto :goto_4

    :cond_20
    move v12, v1

    :goto_4
    move v11, v12

    .line 17913
    :cond_21
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_23

    if-eqz v11, :cond_23

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    .line 17914
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 17915
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17916
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17918
    :cond_22
    new-instance v5, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {v5, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17948
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17950
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 17951
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17952
    goto/16 :goto_a

    .line 17955
    :cond_23
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17956
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v6, v12, :cond_26

    .line 17957
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17958
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_25

    .line 17959
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17960
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 17961
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_24

    move v1, v5

    :cond_24
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_a

    .line 17963
    :cond_25
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 17965
    goto/16 :goto_a

    .line 17968
    :cond_26
    if-le v6, v12, :cond_27

    .line 17969
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17970
    .local v6, "temp":I
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17971
    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17973
    .end local v6    # "temp":I
    :cond_27
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_28

    .line 17974
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v6, v12, v13}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 17975
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 17979
    :try_start_0
    new-instance v6, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    .line 17980
    .local v6, "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17983
    .end local v6    # "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    goto :goto_5

    .line 17981
    :catch_0
    move-exception v6

    .line 17982
    .local v6, "ie":Ljava/lang/IllegalStateException;
    const-string v12, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17984
    .end local v6    # "ie":Ljava/lang/IllegalStateException;
    :goto_5
    const-string v6, "Pen up with side button! : end text selection"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17987
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 17989
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 17990
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_6

    .line 17991
    :cond_28
    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v5, :cond_2a

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v5, :cond_2a

    .line 17992
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v5, :cond_2a

    .line 17993
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, v6, v7}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 17994
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v5, :cond_29

    .line 17995
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 17997
    :cond_29
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 17998
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 17999
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iput-boolean v1, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 18004
    :cond_2a
    :goto_6
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 18005
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 18006
    goto/16 :goto_a

    .line 17771
    .end local v8    # "startPos":Landroid/graphics/Point;
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v11    # "isSameLine":Z
    :sswitch_3
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_2b

    goto/16 :goto_a

    .line 17773
    :cond_2b
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mhideMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 17774
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_2c

    goto :goto_7

    :cond_2c
    move v8, v1

    goto :goto_8

    :cond_2d
    :goto_7
    move v8, v5

    :goto_8
    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 17776
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 17777
    .restart local v8    # "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 17778
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 17779
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17781
    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {v10, v11, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17782
    if-ltz v9, :cond_34

    .line 17783
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v9, :cond_33

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_33

    .line 17785
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastPenDownTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_2f

    .line 17786
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 17787
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17788
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17790
    :cond_2e
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17791
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17792
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 17793
    goto :goto_a

    .line 17796
    :cond_2f
    invoke-static {v5}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17798
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v6

    .line 17799
    .local v6, "flag":Z
    if-nez v6, :cond_30

    .line 17800
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, v9, v1

    .line 17801
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    aput v10, v9, v5

    .line 17803
    :cond_30
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v10, v1

    if-ge v9, v11, :cond_31

    .line 17804
    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_9

    .line 17806
    :cond_31
    aget v10, v10, v5

    if-le v9, v10, :cond_32

    .line 17807
    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17810
    :cond_32
    :goto_9
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 17811
    const-string v9, "Pen down with side button! : start text selection"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17813
    .end local v6    # "flag":Z
    :cond_33
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17814
    iput-boolean v5, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17815
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 17817
    :cond_34
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v5, :cond_36

    .line 17818
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v5

    if-lez v5, :cond_36

    .line 17819
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 17820
    .local v5, "oldStart":I
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 17822
    .local v6, "oldEnd":I
    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-lt v7, v5, :cond_35

    if-le v7, v6, :cond_36

    .line 17823
    :cond_35
    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v6}, Landroid/text/MultiSelection;->addMultiSelection(Landroid/text/Spannable;II)V

    .line 17828
    .end local v5    # "oldStart":I
    .end local v6    # "oldEnd":I
    :cond_36
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17829
    nop

    .line 18026
    .end local v8    # "startPos":Landroid/graphics/Point;
    :cond_37
    :goto_a
    return-void

    .line 17760
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_38
    :goto_b
    return-void

    .line 17710
    .end local v2    # "rawX":F
    .end local v3    # "rawY":F
    :cond_39
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xd3 -> :sswitch_3
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_0
    .end sparse-switch
.end method
