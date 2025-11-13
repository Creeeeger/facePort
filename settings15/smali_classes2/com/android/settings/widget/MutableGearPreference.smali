.class public Lcom/android/settings/widget/MutableGearPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDisabledAlphaValue:I

.field public mGear:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ColorUtil;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mDisabledAlphaValue:I

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0e18

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/widget/GearPreference;->mGearState:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/MutableGearPreference;->mGear:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/widget/MutableGearPreference;->mDisabledAlphaValue:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/widget/GearPreference;->mGearState:Z

    return-void
.end method
