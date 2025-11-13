.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;
.super Landroidx/preference/SecPreference;
.source "WifiApNetworkDisplayCustomPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerAllowedAbove:Z

.field private mDividerAllowedBelow:Z

.field private mIsPreferenceSelectable:Z

.field private mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;

.field private mPreferenceType:I

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryIconResId:I

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mPreferenceType:I

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedAbove:Z

    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedBelow:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mIsPreferenceSelectable:Z

    .line 42
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mContext:Landroid/content/Context;

    .line 57
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mPreferenceType:I

    .line 58
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_network_display_custom_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 63
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mView:Landroid/view/View;

    const v0, 0x1020016

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020010

    .line 69
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020006

    .line 71
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v2, 0x1020018

    .line 73
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 76
    sget v2, Lcom/android/settings/R$id;->icon_secondary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 78
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIconResId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIconResId:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mPreferenceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const v2, 0x1030046

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v0, 0x1030044

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->black:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    .line 97
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedAbove:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedBelow:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 101
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mIsPreferenceSelectable:Z

    if-eqz p1, :cond_6

    .line 102
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mView:Landroid/view/View;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 110
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick() - "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;->onPreferenceClicked(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDividerLine(ZZ)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedAbove:Z

    .line 150
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mDividerAllowedBelow:Z

    .line 151
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 168
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setPreferenceListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 125
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mSecondaryIconResId:I

    .line 127
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->mIsPreferenceSelectable:Z

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
