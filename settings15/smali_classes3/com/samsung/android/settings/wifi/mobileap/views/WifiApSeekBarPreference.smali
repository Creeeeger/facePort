.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLabels:[Ljava/lang/String;

.field public mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public mOnPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

.field public final mOnSeekBarChangeListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;

.field public mProgressTextView:Landroid/widget/TextView;

.field public final mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;

.field public mSecondaryIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mSecondaryIconImageView:Landroid/widget/ImageView;

.field public mSecondaryIconLabel:Ljava/lang/String;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public final thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconLabel:Ljava/lang/String;

    new-instance p3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnSeekBarChangeListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;

    const p3, 0x7f0d0a3c

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->thisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "onBindViewHolder"

    const-string v1, "WifiApSeekBarPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0be7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a07af

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error is setting secondary Icon"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSecondaryIconImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnSeekBarChangeListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$2;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setSeekBarThumbTextView()V

    return-void
.end method

.method public final setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2

    const-string v0, "WifiApSeekBarPreference"

    const-string/jumbo v1, "setOnPreferenceChangeListener() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setSeekBarThumbTextView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "WifiApSeekBarPreference"

    const-string/jumbo v0, "setting SeekBar ThumbTextView - Null Error"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
