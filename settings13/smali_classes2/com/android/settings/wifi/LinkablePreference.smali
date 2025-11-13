.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroidx/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    sget v0, Lcom/android/settings/R$attr;->footerPreferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget p1, Lcom/android/settings/R$drawable;->ic_info_outline_24dp:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 119
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 120
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 129
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 130
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
