.class public Lcom/samsung/android/settings/datausage/MTRPreference;
.super Landroidx/preference/SecPreference;
.source "MTRPreference.java"


# instance fields
.field mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 33
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    new-instance v0, Lcom/samsung/android/settings/datausage/MTRPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MTRPreference$1;-><init>(Lcom/samsung/android/settings/datausage/MTRPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
