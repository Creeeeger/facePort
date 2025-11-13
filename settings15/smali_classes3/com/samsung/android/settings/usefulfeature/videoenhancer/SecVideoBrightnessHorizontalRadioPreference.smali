.class public Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;
.super Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContainerLayout:Landroid/view/ViewGroup;

.field public final mCurrentValue:Landroidx/lifecycle/MutableLiveData;

.field public mIsEnabled:Z

.field public final mIsItemEnabledMap:Ljava/util/HashMap;

.field public mMinHeight:I

.field public mObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;

.field public mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    const p1, 0x7f0d09ea

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getCurrentValue$1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final invalidate(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    const v6, 0x7f0a082e

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Out of index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const v6, 0x7f0a082d

    goto :goto_1

    :cond_2
    const v6, 0x7f0a082c

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v6, 0x7f0a0c2c

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const v7, 0x7f0a07b7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a07d1

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v6}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    const-string/jumbo v6, "sec"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v5, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const v3, 0x3f19999a    # 0.6f

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Out of index"

    if-gt v0, v1, :cond_8

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0d76

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    check-cast v1, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;->mIsDividerEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x5

    const/16 v4, 0xa

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mItemValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v6, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    const/4 v10, 0x2

    if-ne v6, v10, :cond_2

    const v10, 0x7f0a082e

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const v10, 0x7f0a082d

    goto :goto_3

    :cond_4
    const v10, 0x7f0a082c

    :goto_3
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const v10, 0x7f0a0797

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v12, v12, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mImageList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iget v12, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mMinHeight:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    const v11, 0x7f0a07b7

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    iget-object v12, v12, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->mTitleList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a07d1

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v11, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v11, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0, v7}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f060738

    if-nez v6, :cond_5

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->semSetRoundedCorners(I)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v8, v5, v7}, Landroid/widget/ImageView;->semSetRoundedCornerColor(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v0, -0x1

    if-ne v6, v9, :cond_6

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->semSetRoundedCorners(I)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v8, v3, v7}, Landroid/widget/ImageView;->semSetRoundedCornerColor(II)V

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setEntryEnabled(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SecHorizontalRadioPreference"

    const-string p1, "There are no ItemDataInfo for RadioItems"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
