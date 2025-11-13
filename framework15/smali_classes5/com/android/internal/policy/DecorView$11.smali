.class Lcom/android/internal/policy/DecorView$11;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigation_bar_gesture_hint"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object v5, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->access$300(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigation_bar_gesture_detail_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    iget-object v7, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "task_bar"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v3

    :goto_4
    iget-object v8, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget-object v9, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    return-void

    :cond_5
    iget-object v9, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    iget-object v10, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_6

    move v10, v2

    goto :goto_5

    :cond_6
    move v10, v3

    :goto_5
    if-ne v9, v2, :cond_7

    move v11, v2

    goto :goto_6

    :cond_7
    move v11, v3

    :goto_6
    const/4 v12, 0x3

    if-ne v9, v12, :cond_8

    move v12, v2

    goto :goto_7

    :cond_8
    move v12, v3

    :goto_7
    if-eqz v8, :cond_a

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v13, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :cond_a
    :goto_8
    iget-object v13, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v13}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmIsDexEnabled(Lcom/android/internal/policy/DecorView;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v13}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v15}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    move/from16 v17, v1

    int-to-float v1, v15

    move/from16 v18, v4

    int-to-float v4, v14

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmDensityRatio(Lcom/android/internal/policy/DecorView;F)V

    goto :goto_9

    :cond_b
    move/from16 v17, v1

    move/from16 v18, v4

    :goto_9
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    iget-object v13, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v13}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    if-eqz v13, :cond_c

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v15

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v19

    or-int v15, v15, v19

    invoke-virtual {v13, v15}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V

    invoke-virtual {v13}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfputsKnoxBadgeRightCutout(I)V

    :cond_c
    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v14

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Insets;->left:I

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Insets;->right:I

    move/from16 v19, v4

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v14, v15, v4}, Lcom/android/internal/policy/DecorView;->getNavBarSizeForBadge(III)I

    move-result v4

    goto :goto_a

    :cond_d
    move/from16 v19, v4

    :goto_a
    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    if-eqz v2, :cond_f

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v1

    invoke-static {v14, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    sub-int/2addr v15, v4

    invoke-static {v14, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    if-eqz v12, :cond_e

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    invoke-static {}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfgetsKnoxBadgeRightCutout()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_e
    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move/from16 v19, v2

    goto/16 :goto_d

    :cond_f
    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v14}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v14

    if-eqz v12, :cond_12

    if-eqz v5, :cond_10

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    move/from16 v19, v2

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    invoke-static {v15, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    sub-int/2addr v15, v4

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_b

    :cond_10
    move/from16 v19, v2

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    add-int/2addr v15, v4

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    :goto_b
    if-eqz v10, :cond_11

    const/16 v2, 0x20

    if-ne v14, v2, :cond_11

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v15, 0x0

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_11
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    :cond_12
    move/from16 v19, v2

    if-eqz v11, :cond_15

    if-eqz v5, :cond_13

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v1

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    sub-int/2addr v15, v4

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_c

    :cond_13
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v1

    sub-int/2addr v15, v4

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    :goto_c
    if-eqz v10, :cond_14

    const/16 v2, 0x8

    if-ne v14, v2, :cond_14

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v1

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_14
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_15
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v1

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    sub-int/2addr v15, v3

    sub-int/2addr v15, v4

    invoke-static {v2, v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v14

    add-int/2addr v14, v3

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v15

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v1

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setTop(I)V

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setRight(I)V

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$11;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
