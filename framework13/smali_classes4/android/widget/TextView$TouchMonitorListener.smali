.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# static fields
.field private static final blacklist globalTimeForTouch:I = 0x3e8


# instance fields
.field private blacklist mPressTime:J

.field private blacklist mStartX:F

.field private blacklist mStartY:F

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 16164
    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16165
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 16166
    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 16168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView$TouchMonitorListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public blacklist onTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 16172
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 16173
    return-void

    .line 16176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 16177
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 16178
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 16180
    .local v2, "rawY":F
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 16208
    :pswitch_1
    goto/16 :goto_1

    .line 16182
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long/2addr v3, v5

    .line 16183
    .local v3, "elipseTime":J
    iget v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 16184
    .local v5, "moveX":F
    iget v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 16185
    .local v6, "moveY":F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v9

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 16187
    .local v7, "flag":Z
    :goto_0
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x3e8

    cmp-long v8, v3, v8

    if-gez v8, :cond_3

    if-eqz v7, :cond_3

    .line 16188
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mgetPenSelectionController(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v1

    float-to-int v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16190
    return-void

    .line 16192
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_1

    .line 16195
    :cond_3
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_4

    .line 16196
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_1

    .line 16202
    .end local v3    # "elipseTime":J
    .end local v5    # "moveX":F
    .end local v6    # "moveY":F
    .end local v7    # "flag":Z
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    .line 16203
    iput v1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 16204
    iput v2, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 16205
    nop

    .line 16213
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
