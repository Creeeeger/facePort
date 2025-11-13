.class public final Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

.field public final mIsMediaPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mIsMediaPanel:Z

    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0571

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v1, 0x7f0a032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    return-void
.end method

.method public final fadeInAnimation()V
    .locals 0

    return-void
.end method

.method public final getPixel$1(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final setAppendLayoutParams()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flex_mode_scroll_wheel_pos"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v5

    iget-boolean v7, v0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mIsMediaPanel:Z

    const v10, 0x7f070f25

    if-eqz v5, :cond_4

    const v5, 0x7f0700b5

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    if-eqz v7, :cond_0

    iget-object v13, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v14, v3

    const-wide v16, 0x403e666666666666L    # 30.4

    mul-double v14, v14, v16

    div-double/2addr v14, v11

    double-to-int v3, v14

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v14

    mul-int/2addr v14, v6

    sub-int/2addr v3, v14

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v5

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v10

    add-int/2addr v10, v5

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iget-object v13, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v14, v3

    const-wide v16, 0x40428ccccccccccdL    # 37.1

    mul-double v16, v16, v14

    div-double v8, v16, v11

    double-to-int v8, v8

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v9

    mul-int/2addr v9, v6

    sub-int/2addr v8, v9

    iput v8, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v8, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    div-int/2addr v3, v6

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v5

    sub-int/2addr v3, v5

    const-wide v9, 0x40328ccccccccccdL    # 18.55

    mul-double/2addr v14, v9

    div-double/2addr v14, v11

    double-to-int v5, v14

    sub-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/2addr v5, v6

    sub-int/2addr v3, v5

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x7f070f29

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v5

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const v3, 0x7f070f24

    const-wide v8, 0x401b0a3d70a3d70aL    # 6.76

    if-ne v4, v6, :cond_1

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x7f070f28

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v13, v1

    mul-double/2addr v13, v8

    div-double/2addr v13, v11

    double-to-int v10, v13

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v13

    add-int/2addr v13, v10

    iput v13, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    if-eqz v7, :cond_2

    const/16 v5, 0x30

    goto :goto_2

    :cond_2
    const/16 v5, 0x50

    :goto_2
    if-ne v4, v6, :cond_3

    const/4 v2, 0x5

    :cond_3
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    or-int/2addr v2, v5

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v4, v1, v4

    int-to-double v5, v1

    mul-double/2addr v5, v8

    div-double/2addr v5, v11

    double-to-int v1, v5

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5

    :cond_4
    if-eqz v7, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f071758

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f071740

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    if-ne v4, v6, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x55

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    if-ne v4, v1, :cond_7

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f070f29

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f070f27

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    div-int/2addr v3, v6

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v2

    const v2, 0x7f071756

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel$1(I)I

    move-result v2

    mul-int/2addr v2, v6

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_8
    :goto_5
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FlexPanelWheelScrollView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
