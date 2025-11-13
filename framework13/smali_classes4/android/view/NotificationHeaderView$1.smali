.class Landroid/view/NotificationHeaderView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor blacklist <init>(Landroid/view/NotificationHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    .line 77
    iput-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmBackground(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "left":I
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmClipTopAmount(Landroid/view/NotificationHeaderView;)I

    move-result v3

    iget-object v4, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopAmountRounded(Landroid/view/NotificationHeaderView;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmDistanceToTopRoundness(Landroid/view/NotificationHeaderView;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sub-int v11, v3, v4

    .line 88
    .local v11, "top":I
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v12

    .line 89
    .local v12, "right":I
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v3

    iget-object v4, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmClipBottomAmount(Landroid/view/NotificationHeaderView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmBottomAmountRounded(Landroid/view/NotificationHeaderView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmDistanceToBottomRoundness(Landroid/view/NotificationHeaderView;)F

    move-result v4

    float-to-int v5, v4

    :cond_1
    add-int v13, v3, v5

    .line 90
    .local v13, "bottom":I
    sub-int v14, v13, v11

    .line 92
    .local v14, "height":I
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmBottomIsRounded(Landroid/view/NotificationHeaderView;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmCalibratedRadius(Landroid/view/NotificationHeaderView;)I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_2
    move v3, v4

    .line 93
    .local v3, "bottomRoundness":F
    :goto_1
    iget-object v5, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5}, Landroid/view/NotificationHeaderView;->getCurrentBackgroundRadiusTop()F

    move-result v5

    .line 94
    .local v5, "topRoundness":F
    iget-object v6, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v6}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopAmountRounded(Landroid/view/NotificationHeaderView;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget-object v6, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v6}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmCurrentTopRoundness(Landroid/view/NotificationHeaderView;)F

    move-result v6

    :goto_2
    move v15, v6

    .line 95
    .local v15, "realCurrentTopRoundness":F
    cmpl-float v6, v5, v4

    if-lez v6, :cond_4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    add-float v4, v5, v3

    int-to-float v6, v14

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 96
    add-float v4, v5, v3

    int-to-float v6, v14

    sub-float/2addr v4, v6

    .line 97
    .local v4, "overShoot":F
    mul-float v6, v4, v15

    iget-object v7, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v7}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmCalibratedRadius(Landroid/view/NotificationHeaderView;)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    add-float/2addr v7, v15

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 99
    iget-object v6, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v6}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmCalibratedRadius(Landroid/view/NotificationHeaderView;)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    mul-float/2addr v6, v4

    iget-object v7, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v7}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmCalibratedRadius(Landroid/view/NotificationHeaderView;)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    add-float/2addr v7, v15

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    move/from16 v16, v3

    move/from16 v17, v5

    goto :goto_3

    .line 102
    .end local v4    # "overShoot":F
    :cond_4
    move/from16 v16, v3

    move/from16 v17, v5

    .end local v3    # "bottomRoundness":F
    .end local v5    # "topRoundness":F
    .local v16, "bottomRoundness":F
    .local v17, "topRoundness":F
    :goto_3
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTmpPath(Landroid/view/NotificationHeaderView;)Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 103
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTmpPath(Landroid/view/NotificationHeaderView;)Landroid/graphics/Path;

    move-result-object v10

    move v4, v2

    move v5, v11

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v10}, Landroid/view/NotificationHeaderView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 104
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTmpPath(Landroid/view/NotificationHeaderView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 106
    :cond_5
    iget-object v3, v0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmOutlineAlpha(Landroid/view/NotificationHeaderView;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 109
    .end local v2    # "left":I
    .end local v11    # "top":I
    .end local v12    # "right":I
    .end local v13    # "bottom":I
    .end local v14    # "height":I
    .end local v15    # "realCurrentTopRoundness":F
    .end local v16    # "bottomRoundness":F
    .end local v17    # "topRoundness":F
    :cond_6
    return-void
.end method
