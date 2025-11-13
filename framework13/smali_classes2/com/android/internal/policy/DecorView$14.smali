.class Lcom/android/internal/policy/DecorView$14;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 6095
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 20

    .line 6098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6099
    .local v1, "gestureNavBarEnabled":Z
    :goto_0
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_hint"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 6100
    .local v4, "gestureHintState":Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 6101
    .local v5, "isGestureHintOff":Z
    :goto_2
    iget-object v6, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "task_bar"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    .line 6102
    .local v6, "taskbarEnabled":Z
    :goto_3
    iget-object v7, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 6109
    .local v7, "displayType":I
    iget-object v8, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v8, v5, v6, v7}, Lcom/android/internal/policy/DecorView;->-$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6110
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    .line 6111
    return-void

    .line 6114
    :cond_4
    iget-object v8, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 6115
    .local v8, "rotation":I
    iget-object v9, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v3

    .line 6116
    .local v9, "isMultiWindow":Z
    :goto_4
    if-ne v8, v2, :cond_6

    move v10, v2

    goto :goto_5

    :cond_6
    move v10, v3

    .line 6117
    .local v10, "isRotation_90":Z
    :goto_5
    const/4 v11, 0x3

    if-ne v8, v11, :cond_7

    move v11, v2

    goto :goto_6

    :cond_7
    move v11, v3

    .line 6118
    .local v11, "isRotation_270":Z
    :goto_6
    if-eqz v7, :cond_9

    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    .line 6120
    .local v2, "isLargeDisplay":Z
    :cond_9
    :goto_7
    iget-object v12, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v12}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v13}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 6121
    .local v12, "badgeW":I
    iget-object v13, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v13}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 6123
    .local v13, "badgeH":I
    const/4 v14, 0x0

    .line 6125
    .local v14, "navigation_bar_height":I
    iget-object v15, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v15}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v15

    .line 6127
    .local v15, "rootInsets":Landroid/view/WindowInsets;
    if-eqz v15, :cond_a

    .line 6128
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v17

    .line 6129
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v18

    move/from16 v19, v1

    .end local v1    # "gestureNavBarEnabled":Z
    .local v19, "gestureNavBarEnabled":Z
    or-int v1, v17, v18

    .line 6128
    invoke-virtual {v15, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V

    .line 6130
    invoke-virtual {v15}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 6131
    .local v1, "cutout":Landroid/view/DisplayCutout;
    if-eqz v1, :cond_b

    .line 6132
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfputsKnoxBadgeRightCutout(I)V

    goto :goto_8

    .line 6127
    .end local v19    # "gestureNavBarEnabled":Z
    .local v1, "gestureNavBarEnabled":Z
    :cond_a
    move/from16 v19, v1

    .line 6137
    .end local v1    # "gestureNavBarEnabled":Z
    .restart local v19    # "gestureNavBarEnabled":Z
    :cond_b
    :goto_8
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 6138
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->right:I

    move/from16 v17, v4

    .end local v4    # "gestureHintState":Z
    .local v17, "gestureHintState":Z
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v3, v4}, Lcom/android/internal/policy/DecorView;->getNavBarSizeForBadge(III)I

    move-result v14

    goto :goto_9

    .line 6137
    .end local v17    # "gestureHintState":Z
    .restart local v4    # "gestureHintState":Z
    :cond_c
    move/from16 v17, v4

    .line 6141
    .end local v4    # "gestureHintState":Z
    .restart local v17    # "gestureHintState":Z
    :goto_9
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    .line 6142
    if-eqz v2, :cond_e

    .line 6144
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    sub-int/2addr v3, v12

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 6145
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    sub-int/2addr v3, v13

    sub-int/2addr v3, v14

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 6146
    if-eqz v11, :cond_d

    .line 6147
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    invoke-static {}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfgetsKnoxBadgeRightCutout()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 6149
    :cond_d
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 6152
    :cond_e
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    .line 6154
    .local v1, "position":I
    if-eqz v11, :cond_10

    .line 6155
    if-eqz v9, :cond_f

    const/16 v3, 0x20

    if-ne v1, v3, :cond_f

    .line 6156
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_a

    .line 6158
    :cond_f
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 6160
    :goto_a
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 6161
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 6162
    :cond_10
    if-eqz v10, :cond_12

    .line 6163
    if-eqz v9, :cond_11

    const/16 v3, 0x8

    if-ne v1, v3, :cond_11

    .line 6164
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v12

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_b

    .line 6166
    :cond_11
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v12

    sub-int/2addr v4, v14

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 6168
    :goto_b
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 6169
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 6171
    :cond_12
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v12

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 6172
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    sub-int/2addr v4, v14

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 6173
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6177
    .end local v1    # "position":I
    :goto_c
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    add-int/2addr v1, v12

    .line 6178
    .local v1, "finishX":I
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    add-int/2addr v3, v13

    .line 6181
    .local v3, "finishY":I
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v4

    move/from16 v16, v2

    .end local v2    # "isLargeDisplay":Z
    .local v16, "isLargeDisplay":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setLeft(I)V

    .line 6182
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTop(I)V

    .line 6183
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setRight(I)V

    .line 6184
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$14;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 6197
    return-void
.end method
