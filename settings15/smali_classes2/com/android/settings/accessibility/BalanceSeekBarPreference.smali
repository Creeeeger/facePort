.class public Lcom/android/settings/accessibility/BalanceSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404d6

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d050b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/BalanceSeekBar;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method
