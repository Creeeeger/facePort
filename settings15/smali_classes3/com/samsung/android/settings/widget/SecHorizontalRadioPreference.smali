.class public Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final SELECTED_COLOR:I

.field public final UNSELECTED_COLOR:I

.field public mContainerLayout:Landroid/view/ViewGroup;

.field public final mCurrentValue:Landroidx/lifecycle/MutableLiveData;

.field public mIsColorFilterEnabled:Z

.field public mIsDividerEnabled:Z

.field public mIsIconTitleColorEnabled:Z

.field public final mIsItemEnabledMap:Ljava/util/HashMap;

.field public mIsTouchEffectEnabled:Z

.field public mObserver:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

.field public mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

.field public final mType:I

.field public paddingBottom:I

.field public paddingStartEnd:I

.field public paddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06072a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->SELECTED_COLOR:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06072c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->UNSELECTED_COLOR:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsIconTitleColorEnabled:Z

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070de7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070de8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070deb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    const p1, 0x7f0d0969

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getCurrentValue$1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public invalidate(Landroidx/preference/PreferenceViewHolder;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v8, p1

    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    if-eq v6, v10, :cond_1

    const/4 v11, 0x2

    if-ne v6, v11, :cond_0

    const v11, 0x7f0a082e

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v11, 0x7f0a082d

    goto :goto_1

    :cond_2
    const v11, 0x7f0a082c

    :goto_1
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v11, 0x7f0a0c2c

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    iget-object v12, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    iget v13, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    const-string/jumbo v15, "sec"

    const/16 v14, 0x258

    if-ne v13, v10, :cond_4

    const v3, 0x7f0a1041

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0f31

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v13, 0x7f0a0ff7

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v15, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    const/16 v14, 0x190

    :goto_2
    invoke-static {v13, v14, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    :cond_4
    if-nez v13, :cond_7

    const v3, 0x7f0a0797

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a07b7

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v13, 0x7f0a07d1

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v15, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    iget-boolean v15, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsIconTitleColorEnabled:Z

    if-eqz v15, :cond_6

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    const/16 v14, 0x190

    :goto_3
    invoke-static {v13, v14, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_6
    invoke-static {v13, v14, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_4
    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    :cond_7
    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean v13, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez v13, :cond_8

    invoke-virtual {v11}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_a
    iget-boolean v11, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    if-eqz v11, :cond_c

    if-eqz v5, :cond_c

    if-eqz v12, :cond_b

    iget v11, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->SELECTED_COLOR:I

    goto :goto_6

    :cond_b
    iget v11, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->UNSELECTED_COLOR:I

    :goto_6
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_c
    iget-object v11, v0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v11, :cond_d

    goto :goto_7

    :cond_d
    move v10, v2

    :goto_7
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v10, :cond_e

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    const v7, 0x3f19999a    # 0.6f

    :goto_8
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    const-string v1, "Out of index"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0d76

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    check-cast v3, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;

    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;->mIsDividerEnabled:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    const v8, 0x7f0a082e

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const v8, 0x7f0a082d

    goto :goto_2

    :cond_4
    const v8, 0x7f0a082c

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    if-ne v8, v7, :cond_5

    const v8, 0x7f0a1041

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0f31

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mSubTitleList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0ff7

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-nez v8, :cond_7

    const v8, 0x7f0a0797

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mImageList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v8, 0x7f0a07b7

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleColorList:Ljava/util/List;

    if-eqz v9, :cond_6

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleColorList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v8, 0x7f0a07d1

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    new-instance v8, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v8, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v8, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v5, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    iget-boolean v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    if-nez v8, :cond_9

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_9
    if-nez v4, :cond_a

    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v6, v7, v8, v5, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v0, -0x1

    if-ne v4, v7, :cond_b

    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    iget v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_b
    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v6, v5, v7, v5, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public setEntryEnabled(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SecHorizontalRadioPreference"

    const-string p1, "There are no ItemDataInfo for RadioItems"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
