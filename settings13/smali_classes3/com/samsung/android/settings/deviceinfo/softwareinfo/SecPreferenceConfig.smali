.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;
.super Landroidx/preference/Preference;
.source "SecPreferenceConfig.java"


# instance fields
.field private mColorUpdateButton:I

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;

.field private mTextUpdateButton:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mforceRefreshConfigVersion(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->forceRefreshConfigVersion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misOnline(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->isOnline()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadUpdateButtonState(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    sget v0, Lcom/android/settings/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0xffff01

    .line 30
    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    const-string p2, ""

    .line 31
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private forceRefreshConfigVersion()V
    .locals 3

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config/force_update"

    .line 165
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "version"

    .line 144
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config"

    .line 147
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->default_configuration_version:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string v0, "com.settings.preference.config.update"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_config:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 70
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->storeUpdateButtonState(I)V

    .line 71
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->update_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const p1, -0xffff01

    .line 74
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    .line 75
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_0
    return-void
.end method

.method private isOnline()Z
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 183
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readUpdateButtonState()I
    .locals 2

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    const-string v0, "com.settings.update_button"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private storeUpdateButtonState(I)V
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "com.settings.update_button"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    .line 104
    sget v1, Lcom/android/settings/R$id;->update_button:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    sget v2, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 108
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    .line 112
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 135
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 138
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUpdateButtonVisibility(I)V
    .locals 4

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->storeUpdateButtonState(I)V

    const/4 v0, 0x0

    const v1, -0xffff01

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->update_button_text:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    .line 84
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->updating_button_text:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    .line 88
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->error_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const p1, -0x777778

    .line 91
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    .line 92
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
