.class public Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;
.super Lcom/samsung/android/settings/widget/SecUnclickablePreference;
.source "SecLockScreenUnclickablePreference.java"


# instance fields
.field private mTitleColor:I

.field private mTitleTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget p2, Lcom/android/settings/R$color;->sec_biometrics_choose_lock_header_description_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->mTitleColor:I

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 29
    sget v0, Lcom/android/settings/R$layout;->sec_lock_screen_preference_unclickable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 44
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 45
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->mTitleColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->mTitleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->mTitleColor:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockScreenUnclickablePreference;->mTitleTypeface:Landroid/graphics/Typeface;

    return-void
.end method
