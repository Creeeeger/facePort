.class Landroid/preference/PreferenceActivity$6;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmEnableSplitBar(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    return v3

    :cond_2
    const/4 v5, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v6, v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    goto/16 :goto_5

    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_12

    iget-object v6, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v6}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v9, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v9}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v11}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    int-to-float v12, v6

    div-float/2addr v12, v8

    add-float/2addr v12, v11

    add-float v13, v11, v10

    iget-object v14, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result v14

    if-eqz v14, :cond_9

    const v14, 0x3eae147a    # 0.33999997f

    const v16, 0x3f4ccccd    # 0.8f

    int-to-float v3, v6

    cmpl-float v3, v10, v3

    if-lez v3, :cond_5

    int-to-float v3, v9

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_5

    int-to-float v3, v6

    sub-float v3, v10, v3

    add-float/2addr v12, v3

    int-to-float v3, v9

    div-float v3, v12, v3

    cmpl-float v7, v3, v16

    if-lez v7, :cond_4

    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v15, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    move v12, v15

    int-to-float v5, v9

    sub-float v12, v5, v12

    :cond_4
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v5, v12, v5

    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setX(F)V

    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    move v11, v5

    goto :goto_1

    :cond_5
    cmpg-float v3, v10, v7

    if-gez v3, :cond_8

    cmpl-float v3, v13, v7

    if-ltz v3, :cond_8

    add-float/2addr v12, v10

    int-to-float v3, v9

    div-float v3, v12, v3

    cmpg-float v5, v3, v14

    if-gez v5, :cond_6

    int-to-float v5, v9

    mul-float v12, v5, v14

    goto :goto_0

    :cond_6
    cmpl-float v5, v3, v16

    if-lez v5, :cond_7

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    move v7, v15

    int-to-float v12, v9

    sub-float/2addr v12, v7

    :cond_7
    :goto_0
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v5, v12, v5

    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setX(F)V

    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    move v11, v5

    :cond_8
    :goto_1
    goto/16 :goto_3

    :cond_9
    int-to-float v3, v6

    cmpl-float v3, v10, v3

    const v5, 0x3e4ccccd    # 0.2f

    if-lez v3, :cond_c

    int-to-float v3, v9

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_c

    int-to-float v3, v6

    sub-float v3, v10, v3

    add-float/2addr v12, v3

    int-to-float v3, v9

    div-float v3, v12, v3

    const v7, 0x3f28f5c3    # 0.66f

    cmpl-float v14, v3, v7

    if-lez v14, :cond_a

    int-to-float v5, v9

    mul-float/2addr v5, v7

    move v12, v5

    goto :goto_2

    :cond_a
    cmpg-float v5, v3, v5

    if-gez v5, :cond_b

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    move v7, v14

    move v12, v7

    :cond_b
    :goto_2
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v11, v12, v5

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setX(F)V

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    goto :goto_3

    :cond_c
    cmpg-float v3, v10, v7

    if-gez v3, :cond_e

    cmpl-float v3, v13, v7

    if-ltz v3, :cond_e

    add-float/2addr v12, v10

    int-to-float v3, v9

    div-float v3, v12, v3

    cmpg-float v5, v3, v5

    if-gez v5, :cond_d

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    move v7, v14

    move v12, v7

    :cond_d
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v11, v12, v5

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setX(F)V

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    :cond_e
    :goto_3
    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$sfputmUserUpdateSplit(Z)V

    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v14, v7, v8

    int-to-float v15, v9

    div-float v15, v12, v15

    mul-float v1, v14, v15

    move/from16 v16, v6

    sub-float v6, v14, v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v17, v1

    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_f
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_10
    move/from16 v16, v6

    :cond_11
    :goto_4
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    goto :goto_5

    :cond_12
    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Landroid/preference/PreferenceActivity;->-$$Nest$sfgetmSplitBarMovedLeftWeight()F

    move-result v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_13

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$sfputmSplitBarMovedLeftWeight(F)V

    :cond_13
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    goto :goto_5

    :cond_14
    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    cmpg-float v5, v3, v7

    if-gez v5, :cond_15

    const/4 v3, 0x0

    :cond_15
    const/4 v5, 0x3

    if-ne v2, v5, :cond_16

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setX(F)V

    :cond_17
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const/4 v1, 0x1

    return v1
.end method
