.class public Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;
.super Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final ACCOUNT_FAMILY_NAME:Ljava/lang/String; = "account_family_name"

.field public static final ACCOUNT_GIVEN_NAME:Ljava/lang/String; = "account_given_name"

.field public static final ACCOUNT_NICKNAME:Ljava/lang/String; = "account_nickname"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.profileProvider"

.field private static final CONTACT_PHOTO_BLOB:Ljava/lang/String; = "contact_photo_blob"

.field public static final EXTRA_ACCOUNT_FULL_NAME:Ljava/lang/String; = "extra_info_display_full_name"

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SINGLE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "TopLevelSamsungAccountPreferenceController"


# instance fields
.field private mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultSummary:Ljava/lang/String;

.field private mDefaultSummarySALoggingId:Ljava/lang/String;

.field private mDefaultTitle:Ljava/lang/String;

.field private mHasProfilePicture:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPreference:Landroidx/preference/Preference;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8qVflPX-lhHCxyrzPEILk07nqDU(Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->lambda$getProfileDataObserver$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mHasProfilePicture:Z

    return-void
.end method

.method private getDefault()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142696

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultTitle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummary:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getDefaultSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummary:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f080932

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mHasProfilePicture:Z

    return-void
.end method

.method private getDefaultSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_INTELLIGENCE_SERVICE:Z

    if-eqz v0, :cond_0

    const-string v0, "ai_function"

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummarySALoggingId:Ljava/lang/String;

    const p0, 0x7f14269b

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f03016e

    goto :goto_0

    :cond_1
    const v1, 0x7f03016c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f03016f

    goto :goto_1

    :cond_2
    const v1, 0x7f03016d

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "top_level_samsung_account_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "benefit_message_index"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    array-length v4, v0

    rem-int/2addr v3, v4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummarySALoggingId:Ljava/lang/String;

    aget-object p0, v0, v3

    return-object p0
.end method

.method private getProfileDataObserver()Landroid/database/ContentObserver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;)V

    new-instance v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateHandler:Landroid/os/Handler;

    iput-object v0, v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    return-object p0
.end method

.method private getSamsungAccountProfile(Landroid/content/Context;)V
    .locals 13

    const-string v0, "TopLevelSamsungAccountPreferenceController"

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const v1, 0x7f140390

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "contact_photo_blob"

    aput-object v9, v3, v8

    const/4 v10, 0x1

    const-string v4, "account_family_name"

    aput-object v4, v3, v10

    const/4 v5, 0x2

    const-string v6, "account_given_name"

    aput-object v6, v3, v5

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportGoodSettingsV2(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v7

    iget-object v11, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "show_samsung_account_nick_name"

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v11, v7, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string v12, "Boolean"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v7, v7, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object v9, v3, v8

    aput-object v4, v3, v10

    aput-object v6, v3, v5

    const-string v4, "account_nickname"

    aput-object v4, v3, v1

    :cond_1
    move-object v4, v3

    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Get profile image successfully"

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    array-length v4, v2

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v4, v3, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCircular()V

    iput-object v4, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean v10, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mHasProfilePicture:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "profile image is null"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Get profile title successfully"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string/jumbo p0, "profile title is null"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get profile, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-void
.end method

.method private getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TopLevelSamsungAccountPreferenceController"

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportGoodSettingsV2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "show_samsung_account_nick_name"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string v3, "Boolean"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "account_nickname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "profile nick name are null"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Get profile nick name successfully"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "extra_info_display_full_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v0, "profile full name is null"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_family_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "account_given_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo p0, "profile family name and given name are null"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    const-string v2, "Get profile family name and given name successfully"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    if-nez p2, :cond_6

    move-object p2, v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->isFamilyNameFirst(Landroid/content/Context;)Z

    move-result p0

    const-string p1, " "

    if-eqz p0, :cond_7

    invoke-static {v0, p1, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-static {p2, p1, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "Get profile full name successfully"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isFamilyNameFirst(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v4, "vi"

    const-string v5, "hu"

    const-string v0, "ko"

    const-string/jumbo v1, "zh"

    const-string v2, "ja"

    const-string/jumbo v3, "th"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/Utils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private lambda$getProfileDataObserver$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TopLevelSamsungAccountPreferenceController"

    const-string/jumbo v1, "profile data updated!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.osp.app.signin"

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const-string p0, "TopLevelSamsungAccountPreferenceController"

    const-string p1, "Samsung Account is exist"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getDefault()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getSamsungAccountProfile(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    instance-of v3, p1, Lcom/samsung/android/settings/homepage/SecHomepageAccountPreference;

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mHasProfilePicture:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/settings/homepage/SecHomepageAccountPreference;

    iget v6, v5, Lcom/samsung/android/settings/homepage/SecHomepageAccountPreference;->mType:I

    if-eq v6, v4, :cond_4

    iput v4, v5, Lcom/samsung/android/settings/homepage/SecHomepageAccountPreference;->mType:I

    if-ne v4, v3, :cond_3

    const v3, 0x7f0d09ca

    goto :goto_2

    :cond_3
    const v3, 0x7f0d09c9

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_4
    iget-object v3, v5, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    xor-int/lit8 v4, v0, 0x1

    iput-boolean v4, v3, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mUseSummaryPrimaryColor:Z

    iget-object v5, v3, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "first_launch_samsung_account_menu"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140a25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/PkgUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const-string v0, "Settings"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.osp.app.signin"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "There isn\'t Samsung account package."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v2, "ProfileProviderVersion"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Samsung account profile provider version : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getRequestCode()I
    .locals 0

    const/high16 p0, 0x10000

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Account"

    if-eqz v1, :cond_0

    const-string v1, "Logged in"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v1, "Not logged in"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDotVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Badge"

    goto :goto_0

    :cond_1
    const-string v1, "No badge"

    :goto_0
    const-string v2, "Dot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "String"

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mDefaultSummarySALoggingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SA Logging details : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TopLevelSamsungAccountPreferenceController"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "9500"

    invoke-static {v1, v3, v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "settings_sign_in_status_custom_dimensions"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_launch_samsung_account_menu"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getProfileDataObserver()Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TopLevelSamsungAccountPreferenceController"

    const-string/jumbo v0, "profileProvider register failed."

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getProfileDataObserver()Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TopLevelSamsungAccountPreferenceController"

    const-string/jumbo v0, "profileProvider unregister failed."

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
