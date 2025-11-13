.class public Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;
.super Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public dividerStartOffset:I

.field public mResetBtnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->dividerStartOffset:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->dividerStartOffset:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init$2(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    const v1, 0x7f0d0176

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f0704de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->dividerStartOffset:I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c99

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->dividerStartOffset:I

    iput p0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerStartOffset:I

    return-void
.end method
