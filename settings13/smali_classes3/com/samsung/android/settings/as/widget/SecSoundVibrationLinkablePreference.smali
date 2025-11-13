.class public Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;
.super Landroidx/preference/SecPreference;
.source "SecSoundVibrationLinkablePreference.java"


# instance fields
.field private mClickableSpanLink:Landroid/text/style/ClickableSpan;

.field private mContext:Landroid/content/Context;

.field private mDestinationName:Ljava/lang/String;

.field private mGuideTextResource:I

.field private mPositionMode:I

.field private mTextView:Landroid/widget/TextView;

.field private mTitleResource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestinationName(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mDestinationName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleResource(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTitleResource:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mPositionMode:I

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sound_feedback_link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget v1, Lcom/android/settings/R$string;->sec_vibration_to_sound_feedback_link:I

    iput v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mGuideTextResource:I

    .line 67
    sget v1, Lcom/android/settings/R$string;->sec_sound_system_sound_feedback_category:I

    iput v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTitleResource:I

    .line 68
    const-class v1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mDestinationName:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibration_feedback_link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget v1, Lcom/android/settings/R$string;->sec_sound_vibration_feedback_link:I

    iput v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mGuideTextResource:I

    .line 71
    sget v1, Lcom/android/settings/R$string;->sec_vibration_feedback:I

    iput v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTitleResource:I

    .line 72
    const-class v1, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mDestinationName:Ljava/lang/String;

    .line 75
    :cond_1
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;-><init>(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)V

    iput-object v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mClickableSpanLink:Landroid/text/style/ClickableSpan;

    const/16 v1, 0xf

    if-eqz p2, :cond_2

    .line 92
    sget-object v2, Lcom/android/settings/R$styleable;->SecUnclickable:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 93
    sget v3, Lcom/android/settings/R$styleable;->SecUnclickable_positionMode:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mPositionMode:I

    .line 94
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x3

    .line 98
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 100
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 101
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    sget-object p3, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 105
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 108
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 109
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :goto_1
    return-void
.end method

.method private getClickableText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    const-string v0, "%1$s"

    const-string v1, "11"

    .line 166
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%2$s"

    const-string v2, "99"

    .line 167
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-static {p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 169
    invoke-static {p2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v0

    move v0, v5

    :goto_0
    const-string v4, ""

    .line 178
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, -0x4

    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 182
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mClickableSpanLink:Landroid/text/style/ClickableSpan;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v4, Lcom/android/settings/R$color;->sec_widget_relative_link_text_color:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p2, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 189
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 128
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 130
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_widget_body_text_padding_start_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 136
    iget v5, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mPositionMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_subheader_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 143
    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_subheader_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_first_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 139
    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_preference_unclickable_first_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 147
    :goto_0
    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->mGuideTextResource:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->getClickableText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 156
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
