.class public Lcom/android/settings/network/apn/ApnPreference;
.super Landroidx/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCurrentChecked:Landroid/widget/CompoundButton;

.field private static sSelectedKey:Ljava/lang/String;


# instance fields
.field private mHideDetails:Z

.field private mIsEditableMode:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/apn/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lcom/android/settings/R$attr;->apnPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/apn/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mSubId:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/settings/network/apn/ApnPreference;->mSelectable:Z

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mHideDetails:Z

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mIsEditableMode:Z

    return-void
.end method

.method public static initPreferedAPN()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    sput-object v0, Lcom/android/settings/network/apn/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 211
    sput-object v0, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnPreference;->mSelectable:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 85
    sget v0, Lcom/android/settings/R$id;->text_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/android/settings/R$id;->apn_radiobutton:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 89
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 90
    check-cast p1, Landroid/widget/RadioButton;

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnPreference;->mSelectable:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sput-object p1, Lcom/android/settings/network/apn/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 106
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 138
    sget-object p2, Lcom/android/settings/network/apn/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 141
    :cond_1
    sput-object p1, Lcom/android/settings/network/apn/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 145
    sput-object p0, Lcom/android/settings/network/apn/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 146
    sput-object p0, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 152
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 153
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_0

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No context available for pos="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnPreference;->mHideDetails:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 161
    sget p0, Lcom/android/settings/R$string;->cannot_change_apn_toast:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 166
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportCpa()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kddi_cpa_added"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v5, v2

    :cond_2
    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Manual"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.CPA_EDIT"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    :cond_3
    iget v0, p0, Lcom/android/settings/network/apn/ApnPreference;->mSubId:I

    const-string/jumbo v3, "sub_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnPreference;->mIsEditableMode:Z

    const-string v0, "editable_mode"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setChecked()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/network/apn/ApnPreference;->sSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setEditableMode(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mIsEditableMode:Z

    return-void
.end method

.method public setHideDetails()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnPreference;->mHideDetails:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mSelectable:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/android/settings/network/apn/ApnPreference;->mSubId:I

    return-void
.end method
