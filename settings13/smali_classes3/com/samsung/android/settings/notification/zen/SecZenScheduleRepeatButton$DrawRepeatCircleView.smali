.class public Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;
.super Landroid/view/View;
.source "SecZenScheduleRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawRepeatCircleView"
.end annotation


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field final mRadius:I

.field mRepeatToggleButton:Landroid/view/View;

.field mSelectionRatio:F

.field final mStartMargin:I

.field final mStroke:I

.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;Landroid/content/Context;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    .line 817
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 803
    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    .line 805
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_btn_select_circle_radius:I

    .line 806
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRadius:I

    .line 808
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_btn_select_circle_stroke:I

    .line 809
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStroke:I

    .line 811
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_btn_layout_start_end_margin:I

    .line 812
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStartMargin:I

    const/4 p1, 0x0

    .line 814
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    .line 818
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 832
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 833
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    .line 834
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_widget_color_round_button_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 836
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatTextView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStartMargin:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 847
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatTextView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 849
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 851
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setRepeatToggleButton(Landroid/view/View;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    return-void
.end method

.method setSelectionRatio(F)V
    .locals 0

    .line 858
    iput p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    return-void
.end method
