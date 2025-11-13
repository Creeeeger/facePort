.class public Lcom/android/settings/inputmethod/PointerFillStylePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButtonHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d04fd

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getBackgroundSelector(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070806

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v5, 0x11200bd

    invoke-static {p0, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    const v5, 0x7f070809

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v4, v3, v3, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, 0x1010367

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const p1, 0x7f070808

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v4, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v4, v3, v3, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object p0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, p0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V
    .locals 5

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x1120136

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3}, Landroid/view/PointerIcon;->vectorFillStyleToResource(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->getBackgroundSelector(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070806

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f070807

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    const/4 v1, -0x1

    sget-object v4, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, v1, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-ne p3, p4, :cond_1

    const/16 v2, 0xff

    :cond_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/16 p4, 0x11

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setForegroundGravity(I)V

    new-instance p4, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p3, p2}, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/inputmethod/PointerFillStylePreference;II)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p2, 0x3e8

    invoke-static {p0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a02a6

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference;->mButtonHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController$1;->this$0:Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;

    invoke-static {v0}, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;->access$100(Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "pointer_fill_style"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const v1, 0x7f0a029a

    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V

    const v1, 0x7f0a02a5

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V

    const v1, 0x7f0a02bd

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V

    const v1, 0x7f0a02b1

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V

    const v1, 0x7f0a029b

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/inputmethod/PointerFillStylePreference;->initStyleButton(Landroidx/preference/PreferenceViewHolder;III)V

    return-void
.end method
