.class public final Lcom/android/settings/accessibility/PaletteListPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mGradientColors:Ljava/util/List;

.field public final mGradientOffsets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/PaletteListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const p1, 0x7f0d01f3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    move-object/from16 v11, p1

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v12, 0x7f0a0b19

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0604bb

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v13, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v9, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v13, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v8, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v9, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_0

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f03018d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v13

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f03018e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f070035

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v15, Lcom/android/settings/accessibility/PaletteListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-static {v15}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    sget v15, Lcom/android/settings/accessibility/AccessibilityUtil;->$r8$clinit:I

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v9, v3, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v9, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v9, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/2addr v2, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v2, v3

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v15, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aget v3, v2, v8

    aget v2, v2, v9

    if-le v2, v3, :cond_1

    move v3, v2

    :cond_1
    move v2, v8

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_5

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setHeight(I)V

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v15, v4, v8, v8, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/16 v4, 0x10

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    if-ne v10, v9, :cond_2

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_2
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_1
    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    iget-object v10, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v5, v10

    new-array v7, v5, [I

    move v6, v8

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v17, v10, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v17

    aput v17, v7, v6

    add-int/2addr v6, v9

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    new-array v10, v6, [F

    :goto_3
    if-ge v8, v6, :cond_4

    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    aput v18, v10, v8

    add-int/2addr v8, v9

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v2, v9

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v9

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, v1

    const/16 v4, 0x8

    new-array v5, v4, [F

    aput v1, v5, v2

    aput v1, v5, v9

    const/4 v6, 0x2

    aput v1, v5, v6

    const/4 v7, 0x3

    aput v1, v5, v7

    const/4 v8, 0x0

    const/4 v10, 0x4

    aput v8, v5, v10

    const/4 v11, 0x5

    aput v8, v5, v11

    const/4 v12, 0x6

    aput v8, v5, v12

    const/4 v13, 0x7

    aput v8, v5, v13

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-array v3, v4, [F

    aput v8, v3, v2

    aput v8, v3, v9

    aput v8, v3, v6

    aput v8, v3, v7

    aput v1, v3, v10

    aput v1, v3, v11

    aput v1, v3, v12

    aput v1, v3, v13

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method
