.class final Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $containerView:Landroid/view/View;

.field final synthetic $contentView:Landroid/hardware/biometrics/PromptContentView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$containerView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$contentView:Landroid/hardware/biometrics/PromptContentView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$containerView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$contentView:Landroid/hardware/biometrics/PromptContentView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    instance-of v6, v3, Landroid/hardware/biometrics/PromptVerticalListContentView;

    if-eqz v6, :cond_15

    check-cast v3, Landroid/hardware/biometrics/PromptVerticalListContentView;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getDescription()Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f0d0063

    invoke-static {v5, v9, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt;->inflateContentView(Landroid/view/LayoutInflater;ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getListItems()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const v14, 0x7f0700de

    const-string v15, "No such PromptContentItem: "

    if-eqz v10, :cond_2

    :cond_1
    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/hardware/biometrics/PromptContentItem;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    instance-of v8, v7, Landroid/hardware/biometrics/PromptContentItemPlainText;

    if-eqz v8, :cond_3

    move-object/from16 v17, v7

    check-cast v17, Landroid/hardware/biometrics/PromptContentItemPlainText;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    goto :goto_1

    :cond_3
    instance-of v12, v7, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    if-eqz v12, :cond_a

    move-object v12, v7

    check-cast v12, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    invoke-virtual {v12}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    move-result-object v12

    :goto_1
    if-eqz v8, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    instance-of v13, v7, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    :goto_2
    if-eqz v13, :cond_9

    const v13, 0x7f0700dc

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    if-nez v8, :cond_6

    instance-of v8, v7, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    if-eqz v8, :cond_5

    const v8, 0x7f0700da

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    const v8, 0x7f0700d9

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v19, v19, v7

    add-int v18, v19, v18

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v7, v13

    sub-int v7, v7, v18

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v7, v13

    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    const v13, 0x1010095

    filled-new-array {v13}, [I

    move-result-object v13

    const v14, 0x7f140428

    invoke-virtual {v4, v14, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v13

    move/from16 v19, v1

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v8, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    const v8, 0x7f0b0005

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v7, v7

    div-float/2addr v1, v7

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v1, v11

    float-to-int v1, v1

    if-le v1, v8, :cond_7

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x1

    const/16 v16, 0x0

    :goto_4
    xor-int/lit8 v7, v16, 0x1

    if-nez v7, :cond_8

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    move/from16 v1, v19

    const v14, 0x7f0700de

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    if-eqz v14, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x1

    if-le v1, v7, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_b

    new-instance v1, Landroid/hardware/biometrics/PromptContentItemPlainText;

    const-string v7, ""

    invoke-direct {v1, v7}, Landroid/hardware/biometrics/PromptContentItemPlainText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const v1, 0x7f0d005e

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_14

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/biometrics/PromptContentItem;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v1, 0x7f0d005d

    invoke-virtual {v5, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v20, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v21, v2

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {v7, v2, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, v12, Landroid/hardware/biometrics/PromptContentItemPlainText;

    if-eqz v0, :cond_c

    check-cast v12, Landroid/hardware/biometrics/PromptContentItemPlainText;

    invoke-virtual {v12}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v22, v15

    const v15, 0x7f0700da

    goto :goto_7

    :cond_c
    instance-of v0, v12, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/text/SpannableString;

    check-cast v12, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    invoke-virtual {v12}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v7, 0x7f0700d9

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v7, 0x11200b6

    move-object/from16 v22, v15

    const/4 v15, 0x0

    invoke-static {v4, v7, v15}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v7

    const v15, 0x7f0700da

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-direct {v2, v10, v7, v13}, Landroid/text/style/BulletSpan;-><init>(III)V

    invoke-virtual {v12}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0x21

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v12, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v10

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_f
    :goto_9
    if-eqz v14, :cond_10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_10

    new-instance v0, Landroid/widget/Space;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0700de

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v12, -0x1

    invoke-direct {v2, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_10
    const v10, 0x7f0700de

    :goto_a
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v14, :cond_12

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v11, v0, :cond_11

    goto :goto_b

    :cond_11
    const v0, 0x7f0d005e

    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0d005e

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object v8, v7

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v1, v0

    move-object v7, v2

    move/from16 v10, v20

    move-object/from16 v2, v21

    move-object/from16 v15, v22

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_13
    move-object/from16 v22, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v21, v2

    goto :goto_d

    :cond_15
    move-object/from16 v21, v2

    instance-of v0, v3, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    if-eqz v0, :cond_16

    check-cast v3, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0d005f

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt;->inflateContentView(Landroid/view/LayoutInflater;ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v0, 0x7f0a0332

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt$initLayout$1;

    invoke-direct {v1, v5}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt$initLayout$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;->$containerView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such PromptContentView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
