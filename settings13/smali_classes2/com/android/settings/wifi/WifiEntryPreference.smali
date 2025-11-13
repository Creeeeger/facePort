.class public Lcom/android/settings/wifi/WifiEntryPreference;
.super Landroidx/preference/Preference;
.source "WifiEntryPreference.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_SECURED:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private final mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

.field private mLevel:I

.field private mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

.field private mShowX:Z

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 48
    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->STATE_SECURED:[I

    new-array v1, v0, [I

    .line 52
    sget v2, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 57
    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sput-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-direct {v0, p1}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    .line 83
    sget p1, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 84
    sget p1, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 87
    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 88
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 242
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 245
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 303
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    return-object v0
.end method

.method private updateIcon(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-virtual {v1, p1, p2}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->getIcon(ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getIconColorAttr()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method buildContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .line 253
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-nez v3, :cond_0

    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    aput-object v5, v3, v6

    aput-object v2, v3, v4

    .line 258
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v2

    if-ltz v2, :cond_1

    .line 261
    sget-object v3, Lcom/android/settings/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v9, v3

    if-ge v2, v9, :cond_1

    new-array v9, v8, [Ljava/lang/CharSequence;

    aput-object v1, v9, v7

    aput-object v5, v9, v6

    .line 262
    aget v1, v3, v2

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    .line 262
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    new-array v2, v8, [Ljava/lang/CharSequence;

    aput-object v1, v2, v7

    aput-object v5, v2, v6

    .line 266
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    if-nez p0, :cond_2

    .line 267
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 268
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v2, v4

    .line 265
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getIconColorAttr()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 200
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const p0, 0x1010435

    goto :goto_1

    :cond_1
    const p0, 0x1010429

    :goto_1
    return p0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020010

    .line 100
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 110
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    sget v0, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 117
    sget v1, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 120
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_2

    .line 121
    sget v1, Lcom/android/settingslib/R$drawable;->ic_help:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEntryPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010429

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 122
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settingslib/R$string;->help_label:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEntryPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    if-ne p1, v0, :cond_0

    .line 282
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

    if-eqz p1, :cond_0

    .line 283
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;->onButtonClick(Lcom/android/settings/wifi/WifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    .line 150
    iget v2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mShowX:Z

    if-eq v1, v2, :cond_1

    .line 151
    :cond_0
    iput v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mShowX:Z

    .line 153
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiEntryPreference;->updateIcon(ZI)V

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->buildContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setOnButtonClickListener(Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

    .line 276
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
