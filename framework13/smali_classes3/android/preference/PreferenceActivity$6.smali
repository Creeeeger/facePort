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
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .line 856
    iput-object p1, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmEnableSplitBar(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 861
    return v3

    .line 864
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 865
    .local v2, "action":I
    const/4 v4, 0x0

    .line 866
    .local v4, "splitBar":Landroid/view/View;
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 867
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 870
    :cond_1
    if-nez v4, :cond_2

    .line 871
    return v3

    .line 874
    :cond_2
    const/4 v5, 0x1

    if-nez v2, :cond_3

    .line 876
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v6, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v6, v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    goto/16 :goto_5

    .line 879
    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_12

    .line 880
    iget-object v6, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v6}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 881
    .local v6, "splitBarwidth":I
    iget-object v9, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v9}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 883
    .local v9, "parentLayoutWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 884
    .local v10, "touchX":F
    iget-object v11, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v11}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    .line 885
    .local v11, "newSplitBarPosX":F
    int-to-float v12, v6

    div-float/2addr v12, v8

    add-float/2addr v12, v11

    .line 886
    .local v12, "newSplitBarCenterPosX":F
    add-float v13, v11, v10

    .line 889
    .local v13, "touchXInParentRect":F
    iget-object v14, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 890
    const v14, 0x3eae147a    # 0.33999997f

    .line 891
    .local v14, "mSplitBarMoveableAreaMin":F
    const v16, 0x3f4ccccd    # 0.8f

    .line 892
    .local v16, "mSplitBarMoveableAreaMax":F
    int-to-float v3, v6

    cmpl-float v3, v10, v3

    if-lez v3, :cond_5

    int-to-float v3, v9

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_5

    .line 894
    int-to-float v3, v6

    sub-float v3, v10, v3

    add-float/2addr v12, v3

    .line 897
    int-to-float v3, v9

    div-float v3, v12, v3

    .line 898
    .local v3, "splitRatio":F
    cmpl-float v7, v3, v16

    if-lez v7, :cond_4

    .line 899
    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 900
    .local v7, "d":Landroid/util/DisplayMetrics;
    invoke-static {v5, v15, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    .line 903
    .local v15, "splitXinFullview":F
    move v12, v15

    .line 904
    int-to-float v5, v9

    sub-float v12, v5, v12

    .line 906
    .end local v7    # "d":Landroid/util/DisplayMetrics;
    .end local v15    # "splitXinFullview":F
    :cond_4
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v5, v12, v5

    .line 907
    .end local v11    # "newSplitBarPosX":F
    .local v5, "newSplitBarPosX":F
    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setX(F)V

    .line 908
    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    .line 909
    .end local v3    # "splitRatio":F
    move v11, v5

    goto :goto_1

    .line 910
    .end local v5    # "newSplitBarPosX":F
    .restart local v11    # "newSplitBarPosX":F
    :cond_5
    cmpg-float v3, v10, v7

    if-gez v3, :cond_8

    cmpl-float v3, v13, v7

    if-ltz v3, :cond_8

    .line 912
    add-float/2addr v12, v10

    .line 915
    int-to-float v3, v9

    div-float v3, v12, v3

    .line 916
    .restart local v3    # "splitRatio":F
    cmpg-float v5, v3, v14

    if-gez v5, :cond_6

    .line 917
    int-to-float v5, v9

    mul-float v12, v5, v14

    goto :goto_0

    .line 919
    :cond_6
    cmpl-float v5, v3, v16

    if-lez v5, :cond_7

    .line 920
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 921
    .local v5, "d":Landroid/util/DisplayMetrics;
    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    .line 924
    .restart local v15    # "splitXinFullview":F
    move v7, v15

    .line 925
    .end local v12    # "newSplitBarCenterPosX":F
    .local v7, "newSplitBarCenterPosX":F
    int-to-float v12, v9

    sub-float/2addr v12, v7

    .line 928
    .end local v5    # "d":Landroid/util/DisplayMetrics;
    .end local v7    # "newSplitBarCenterPosX":F
    .end local v15    # "splitXinFullview":F
    .restart local v12    # "newSplitBarCenterPosX":F
    :cond_7
    :goto_0
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v5, v12, v5

    .line 929
    .end local v11    # "newSplitBarPosX":F
    .local v5, "newSplitBarPosX":F
    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setX(F)V

    .line 930
    iget-object v7, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    move v11, v5

    .line 932
    .end local v3    # "splitRatio":F
    .end local v5    # "newSplitBarPosX":F
    .end local v14    # "mSplitBarMoveableAreaMin":F
    .end local v16    # "mSplitBarMoveableAreaMax":F
    .restart local v11    # "newSplitBarPosX":F
    :cond_8
    :goto_1
    goto/16 :goto_3

    .line 933
    :cond_9
    int-to-float v3, v6

    cmpl-float v3, v10, v3

    const v5, 0x3e4ccccd    # 0.2f

    if-lez v3, :cond_c

    int-to-float v3, v9

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_c

    .line 935
    int-to-float v3, v6

    sub-float v3, v10, v3

    add-float/2addr v12, v3

    .line 938
    int-to-float v3, v9

    div-float v3, v12, v3

    .line 939
    .restart local v3    # "splitRatio":F
    const v7, 0x3f28f5c3    # 0.66f

    cmpl-float v14, v3, v7

    if-lez v14, :cond_a

    .line 940
    int-to-float v5, v9

    mul-float/2addr v5, v7

    move v12, v5

    .end local v12    # "newSplitBarCenterPosX":F
    .local v5, "newSplitBarCenterPosX":F
    goto :goto_2

    .line 942
    .end local v5    # "newSplitBarCenterPosX":F
    .restart local v12    # "newSplitBarCenterPosX":F
    :cond_a
    cmpg-float v5, v3, v5

    if-gez v5, :cond_b

    .line 943
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 944
    .local v5, "d":Landroid/util/DisplayMetrics;
    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    .line 947
    .local v14, "splitXinFullview":F
    move v7, v14

    move v12, v7

    .line 949
    .end local v5    # "d":Landroid/util/DisplayMetrics;
    .end local v14    # "splitXinFullview":F
    :cond_b
    :goto_2
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v11, v12, v5

    .line 950
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setX(F)V

    .line 951
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    .line 952
    .end local v3    # "splitRatio":F
    goto :goto_3

    .line 953
    :cond_c
    cmpg-float v3, v10, v7

    if-gez v3, :cond_e

    cmpl-float v3, v13, v7

    if-ltz v3, :cond_e

    .line 955
    add-float/2addr v12, v10

    .line 958
    int-to-float v3, v9

    div-float v3, v12, v3

    .line 959
    .restart local v3    # "splitRatio":F
    cmpg-float v5, v3, v5

    if-gez v5, :cond_d

    .line 960
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 961
    .restart local v5    # "d":Landroid/util/DisplayMetrics;
    const/4 v7, 0x1

    invoke-static {v7, v15, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    .line 964
    .restart local v14    # "splitXinFullview":F
    move v7, v14

    move v12, v7

    .line 966
    .end local v5    # "d":Landroid/util/DisplayMetrics;
    .end local v14    # "splitXinFullview":F
    :cond_d
    int-to-float v5, v6

    div-float/2addr v5, v8

    sub-float v11, v12, v5

    .line 967
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setX(F)V

    .line 968
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    .line 972
    .end local v3    # "splitRatio":F
    :cond_e
    :goto_3
    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 973
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$sfputmUserUpdateSplit(Z)V

    .line 974
    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 975
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 976
    .local v3, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 977
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 979
    .local v5, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 980
    .local v7, "leftPanelWeight":F
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 981
    .local v8, "rightPanelWeight":F
    add-float v14, v7, v8

    .line 983
    .local v14, "weightSum":F
    int-to-float v15, v9

    div-float v15, v12, v15

    .line 985
    .local v15, "leftPanelWidthRatio":F
    mul-float v1, v14, v15

    .line 986
    .local v1, "newLeftPanelWeight":F
    move/from16 v16, v6

    .end local v6    # "splitBarwidth":I
    .local v16, "splitBarwidth":I
    sub-float v6, v14, v1

    .line 988
    .local v6, "newRightPanelWeight":F
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 989
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 992
    move/from16 v17, v1

    .end local v1    # "newLeftPanelWeight":F
    .local v17, "newLeftPanelWeight":F
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 993
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 994
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 998
    :cond_f
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 972
    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "leftPanelWeight":F
    .end local v8    # "rightPanelWeight":F
    .end local v14    # "weightSum":F
    .end local v15    # "leftPanelWidthRatio":F
    .end local v16    # "splitBarwidth":I
    .end local v17    # "newLeftPanelWeight":F
    .local v6, "splitBarwidth":I
    :cond_10
    move/from16 v16, v6

    .line 1003
    .end local v6    # "splitBarwidth":I
    .restart local v16    # "splitBarwidth":I
    :cond_11
    :goto_4
    iget-object v1, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    .line 1004
    .end local v9    # "parentLayoutWidth":I
    .end local v10    # "touchX":F
    .end local v11    # "newSplitBarPosX":F
    .end local v12    # "newSplitBarCenterPosX":F
    .end local v13    # "touchXInParentRect":F
    .end local v16    # "splitBarwidth":I
    goto :goto_5

    :cond_12
    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1006
    iget-object v3, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1007
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1009
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Landroid/preference/PreferenceActivity;->-$$Nest$sfgetmSplitBarMovedLeftWeight()F

    move-result v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_13

    .line 1010
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$sfputmSplitBarMovedLeftWeight(F)V

    .line 1014
    :cond_13
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1016
    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_5

    .line 1017
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

    .line 1018
    .local v3, "x":F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_15

    .line 1019
    const/4 v3, 0x0

    .line 1021
    :cond_15
    const/4 v5, 0x3

    if-ne v2, v5, :cond_16

    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1022
    :cond_16
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setX(F)V

    .line 1024
    :cond_17
    iget-object v5, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/preference/PreferenceActivity;->-$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V

    .line 1027
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    .end local v3    # "x":F
    :goto_5
    const/4 v1, 0x1

    return v1
.end method
