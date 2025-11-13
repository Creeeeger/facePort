.class public Lcom/android/settings/widget/TickButtonPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCheckIcon:Landroid/widget/ImageView;

.field public mIsSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/TickButtonPreference;->mIsSelected:Z

    const p1, 0x7f0d0512

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/TickButtonPreference;->mIsSelected:Z

    const p1, 0x7f0d0512

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0306

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TickButtonPreference;->mCheckIcon:Landroid/widget/ImageView;

    iget-boolean p1, p0, Lcom/android/settings/widget/TickButtonPreference;->mIsSelected:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/TickButtonPreference;->mCheckIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/widget/TickButtonPreference;->mIsSelected:Z

    return-void
.end method
