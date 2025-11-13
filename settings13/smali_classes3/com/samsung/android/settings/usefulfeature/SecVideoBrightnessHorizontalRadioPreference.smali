.class public Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;
.super Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
.source "SecVideoBrightnessHorizontalRadioPreference.java"


# instance fields
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

.field private mIsEnabled:Z

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

.field private mMinHeight:I

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


# direct methods
.method public static synthetic $r8$lambda$7vbRK4uPSSpGyYVsNqRvVmzvBwg(Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->lambda$onBindViewHolder$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPWP5U3kOBCpEeuoem_OVkuyjcg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lBHuhUbATe_DGdIOc6RtQS-Eqcs(Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n09MBKc3L3Pf29vA7S_fV39jSbc(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->lambda$onBindViewHolder$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    .line 52
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 55
    sget p1, Lcom/android/settings/R$layout;->sec_video_brightness_radio_button_layout_horizontal:I

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

    .line 198
    sget p0, Lcom/android/settings/R$id;->item3:I

    return p0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Out of index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_1
    sget p0, Lcom/android/settings/R$id;->item2:I

    return p0

    .line 194
    :cond_2
    sget p0, Lcom/android/settings/R$id;->item1:I

    return p0
.end method

.method private invalidate(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->getResId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 164
    sget v5, Lcom/android/settings/R$id;->radio_button:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 165
    sget v6, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 166
    sget v6, Lcom/android/settings/R$id;->icon_title:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 167
    sget v7, Lcom/android/settings/R$id;->image_frame:I

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 169
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 170
    invoke-virtual {v5}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    .line 171
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v5, 0x0

    .line 172
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 177
    iget-boolean v5, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 178
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const v3, 0x3f19999a    # 0.6f

    .line 179
    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_2
    const p1, 0x3f19999a    # 0.6f

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onBindViewHolder$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa0

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_2
    :goto_0
    return v0

    :cond_3
    const p1, 0x3f19999a    # 0.6f

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return p2
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->invalidate(Landroidx/preference/PreferenceViewHolder;)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    .line 64
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->sec_radio_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    .line 65
    check-cast v1, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecHorizontalRadioViewContainer;->setDividerEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    const/16 v3, 0xa

    const/4 v4, 0x5

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v1, :cond_1

    move v3, v4

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getItemValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->getResId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 75
    sget v8, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v10}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getImageList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget v10, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mMinHeight:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 77
    sget v9, Lcom/android/settings/R$id;->icon_title:I

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    invoke-virtual {v10}, Lcom/samsung/android/settings/widget/RadioItemDataInfo;->getTitleList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v9, Lcom/android/settings/R$id;->image_frame:I

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v9, 0x0

    .line 80
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v6}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v4, :cond_2

    .line 118
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->semSetRoundedCorners(I)V

    .line 119
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/ImageView;->semSetRoundedCornerColor(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_3

    .line 121
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->semSetRoundedCorners(I)V

    .line 122
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/ImageView;->semSetRoundedCornerColor(II)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 62
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Out of index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsEnabled:Z

    .line 188
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEntryEnabled(Ljava/lang/String;Z)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mIsItemEnabledMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setImageMinHeight(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 207
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mMinHeight:I

    .line 208
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SecHorizontalRadioPreference"

    const-string p1, "There are no ItemDataInfo for RadioItems"

    .line 135
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mRadioItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
