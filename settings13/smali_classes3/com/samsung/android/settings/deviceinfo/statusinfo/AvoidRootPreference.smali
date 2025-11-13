.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;
.super Landroidx/preference/SecPreference;
.source "AvoidRootPreference.java"


# instance fields
.field private mBadge:Landroid/widget/TextView;

.field private mShowRedIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;->mShowRedIcon:Z

    .line 38
    sget p1, Lcom/android/settings/R$layout;->sec_avoid_root_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "AvoidRootPreference"

    const-string v1, "onBindView()"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v0, Lcom/android/settings/R$id;->badge:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;->mBadge:Landroid/widget/TextView;

    .line 47
    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;->mShowRedIcon:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setAvoidRootVisible(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;->mShowRedIcon:Z

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
