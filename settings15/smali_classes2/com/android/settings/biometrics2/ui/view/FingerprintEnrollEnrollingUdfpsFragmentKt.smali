.class public abstract Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final configLayout(Landroid/content/Context;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/high16 v5, 0x43460000    # 198.0f

    const/high16 v6, 0x430a0000    # 138.0f

    const v7, 0x429947ae    # 76.64f

    const/4 v8, 0x3

    const/4 v9, 0x1

    const v10, 0x7f0a10a9

    const/16 v11, 0xa

    const/4 v12, -0x2

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v14, 0x11

    invoke-virtual {v13, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v0, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v7, 0x43178a3d    # 151.54f

    invoke-static {v0, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v6, 0x43100000    # 144.0f

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v0, v5}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v0, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v7, 0x428ffae1    # 71.99f

    invoke-static {v0, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v0, v5}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v0, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v0, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {p5 .. p5}, Landroid/widget/Button;->requestLayout()V

    :goto_1
    return-void
.end method

.method public static final convertDpToPixel(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
