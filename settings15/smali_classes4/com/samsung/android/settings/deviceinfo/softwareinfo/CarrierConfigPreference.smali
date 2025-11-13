.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mColorUpdateButton:I

.field public final mContext:Landroid/content/Context;

.field public final mEditor:Landroid/content/SharedPreferences$Editor;

.field public final mPref:Landroid/content/SharedPreferences;

.field public mTextUpdateButton:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401f0

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0xffff01

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    const-string p3, ""

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const-string p3, "com.settings.preference.config.update"

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f0d09f5

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mPref:Landroid/content/SharedPreferences;

    const-string p3, "com.settings.update_button"

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const p3, 0x7f143078

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.settings.update_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f0a10c4

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0f81

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v3, "version"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "content://com.samsung.ims.entitlementconfig.provider/config"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f140c05

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    new-instance p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setUpdateButtonVisibility(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.settings.update_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    const v1, -0xffff01

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f143078

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f14307c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f140e5b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mTextUpdateButton:Ljava/lang/String;

    const p1, -0x777778

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mColorUpdateButton:I

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
