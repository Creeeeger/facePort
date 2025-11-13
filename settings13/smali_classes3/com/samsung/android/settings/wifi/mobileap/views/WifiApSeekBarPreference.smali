.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "WifiApSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;
    }
.end annotation


# static fields
.field private static final SEEKBAR_PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLabels:[Ljava/lang/String;

.field private mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgressTextView:Landroid/widget/TextView;

.field private mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconImageView:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method public static synthetic $r8$lambda$FFb7RR-nSI97P1ZoXMxdEtn0-JA(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->lambda$setSeekBarThumbTextView$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOnPreferenceChangeListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Landroidx/preference/Preference$OnPreferenceChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPreferenceItemsCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthisPreference(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSeekBarThumbTextView(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setSeekBarThumbTextView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    .line 21
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_seekbar_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->SEEKBAR_PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 45
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 66
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->SEEKBAR_PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mContext:Landroid/content/Context;

    .line 68
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    const-string p0, ""

    .line 70
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSeekBarThumbTextView$0()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    sub-float/2addr v2, v0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setX(F)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setSeekBarThumbTextView()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 125
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v0, "setting SeekBar ThumbTextView - Null Error"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 89
    sget v1, Lcom/android/settings/R$id;->progress_text:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    const v1, 0x1020531

    .line 90
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 91
    sget v1, Lcom/android/settings/R$id;->icon_secondary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Error is setting secondary Icon"

    .line 97
    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setSeekBarThumbTextView()V

    return-void
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    .line 131
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "setOnPreferenceChangeListener() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceItemsCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "setOnPreferenceItemsCLickListener() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryIcon() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
