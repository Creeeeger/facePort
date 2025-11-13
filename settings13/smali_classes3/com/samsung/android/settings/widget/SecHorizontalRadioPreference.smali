.class public Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
.super Landroidx/preference/Preference;
.source "SecHorizontalRadioPreference.java"


# instance fields
.field private final SELECTED_COLOR:I

.field private final UNSELECTED_COLOR:I

.field protected mContainerLayout:Landroid/view/ViewGroup;

.field private mCurrentValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsColorFilterEnabled:Z

.field private mIsDividerEnabled:Z

.field private mIsItemEnabledMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTouchEffectEnabled:Z

.field private mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

.field protected mType:I

.field private final paddingBottom:I

.field private final paddingStartEnd:I

.field private final paddingTop:I


# direct methods
.method public static synthetic $r8$lambda$5RS0kUBCk7a595WVTSoS_ifV07Y(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JsS3RJc1E_q2TvrRUzu2jKMTm4o(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->lambda$onBindViewHolder$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNoWrZb57FrZGqHZo9c46pYqwTU(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->lambda$onBindViewHolder$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l3dGNSPDQfYUfGwqf7qeLgjXGDc(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->SELECTED_COLOR:I

    .line 57
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->UNSELECTED_COLOR:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    .line 73
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/android/settings/R$styleable;->Preference_viewType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 75
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setViewType(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_multi_btn_preference_padding_start_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 80
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_multi_btn_preference_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 83
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_multi_btn_preference_padding_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 86
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    .line 90
    sget p1, Lcom/android/settings/R$layout;->sec_radio_button_layout_horizontal:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private getResId(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 290
    sget p0, Lcom/android/settings/R$id;->item3:I

    return p0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Out of index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_1
    sget p0, Lcom/android/settings/R$id;->item2:I

    return p0

    .line 286
    :cond_2
    sget p0, Lcom/android/settings/R$id;->item1:I

    return p0
.end method

.method private invalidate(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 248
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getResId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 249
    sget v9, Lcom/android/settings/R$id;->radio_button:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 251
    iget v10, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 252
    sget v4, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 253
    sget v5, Lcom/android/settings/R$id;->sub_title:I

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 254
    sget v10, Lcom/android/settings/R$id;->text_frame:I

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-nez v10, :cond_1

    .line 256
    sget v4, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    .line 257
    sget v4, Lcom/android/settings/R$id;->icon_title:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 258
    sget v10, Lcom/android/settings/R$id;->image_frame:I

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 263
    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 264
    iget-boolean v12, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez v12, :cond_2

    invoke-virtual {v9}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eqz v4, :cond_3

    .line 266
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    invoke-virtual {v4, v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    if-eqz v5, :cond_4

    .line 270
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 271
    invoke-virtual {v5, v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 273
    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    if-eqz v10, :cond_5

    .line 274
    iget v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->SELECTED_COLOR:I

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->UNSELECTED_COLOR:I

    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 276
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v9, :cond_7

    goto :goto_3

    :cond_7
    move v11, v1

    .line 277
    :goto_3
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v11, :cond_8

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    const v7, 0x3f19999a    # 0.6f

    .line 278
    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_4

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 139
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_2

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 142
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 129
    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_4

    const p0, 0x3f19999a    # 0.6f

    .line 130
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0xa0

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_3

    .line 152
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 160
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_3
    :goto_0
    return v0

    .line 154
    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_5

    const p0, 0x3f19999a    # 0.6f

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return p3
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->invalidate(Landroidx/preference/PreferenceViewHolder;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    .line 95
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Out of index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v1

    .line 104
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->sec_radio_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    .line 105
    check-cast v2, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;->setDividerEnabled(Z)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    if-eqz v2, :cond_8

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getResId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 113
    iget v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 114
    sget v6, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v8}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getTitleList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v6, Lcom/android/settings/R$id;->sub_title:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v8}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getSubTitleList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sget v6, Lcom/android/settings/R$id;->text_frame:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    .line 118
    sget v6, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v8}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getImageList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    sget v6, Lcom/android/settings/R$id;->icon_title:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v8}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getTitleList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v6, Lcom/android/settings/R$id;->image_frame:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_3
    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    iget-boolean v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez v6, :cond_4

    const/4 v6, 0x0

    .line 124
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_4
    new-instance v6, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    new-instance v6, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    new-instance v6, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v4}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget v4, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    .line 174
    iget-boolean v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    if-nez v6, :cond_5

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 175
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_5
    if-nez v3, :cond_6

    .line 178
    iget v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_7

    .line 180
    iget v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingStartEnd:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    .line 182
    :cond_7
    iget v6, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingTop:I

    iget v7, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->paddingBottom:I

    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public setColorFilterEnabled(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    return-void
.end method

.method public setDividerEnabled(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    return-void
.end method

.method public setEntryEnabled(Ljava/lang/String;Z)V
    .locals 0

    .line 221
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

    .line 208
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    return-void
.end method

.method public setTouchEffectEnabled(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mType:I

    return-void
.end method
