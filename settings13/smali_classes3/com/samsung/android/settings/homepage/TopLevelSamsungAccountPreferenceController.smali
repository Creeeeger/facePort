.class public Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;
.super Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;
.source "TopLevelSamsungAccountPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FAMILY_NAME:Ljava/lang/String; = "account_family_name"

.field public static final ACCOUNT_GIVEN_NAME:Ljava/lang/String; = "account_given_name"

.field public static final ACCOUNT_NICKNAME:Ljava/lang/String; = "account_nickname"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.profileProvider"

.field private static final CONTACT_PHOTO_BLOB:Ljava/lang/String; = "contact_photo_blob"

.field public static final EXTRA_ACCOUNT_FULL_NAME:Ljava/lang/String; = "extra_info_display_full_name"

.field private static final MULTI_URI:Landroid/net/Uri;

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SINGLE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "TopLevelSamsungAccountPreferenceController"


# instance fields
.field private mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPreference:Landroidx/preference/Preference;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DP9NC4k_8GP_KEp8SNUDS6Oy35Q(Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->lambda$getProfileDataObserver$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_multi"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->MULTI_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 374
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_package:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_class:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefault()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->getSamsungAccountTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getDefaultSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->sec_ic_samsung_account_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getDefaultSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 171
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    sget v0, Lcom/android/settings/R$string;->sec_profile:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget v0, Lcom/android/settings/R$string;->sec_samsung_account_apps_and_features:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    invoke-static {p1}, Lcom/android/settings/Utils;->getTopLevelSummarySeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/Utils;->buildSummaryString(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaskedEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "@"

    .line 334
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 335
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 339
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, ".(?=@)"

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-le p0, v0, :cond_3

    const-string p0, "(?<=.{3}).(?=.*@)"

    goto :goto_0

    .line 346
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".(?=.*@)(?<=.{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "*"

    .line 348
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProfileDataObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;)V

    .line 192
    new-instance v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mContentObserver:Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;

    return-object p0
.end method

.method private getSamsungAccountProfile(Landroid/content/Context;)V
    .locals 9

    const-string v0, "TopLevelSamsungAccountPreferenceController"

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "contact_photo_blob"

    const-string v2, "account_family_name"

    const-string v3, "account_given_name"

    .line 226
    filled-new-array {v7, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v8, "show_samsung_account_nick_name"

    invoke-virtual {v5, v6, v8}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicyTypeBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "account_nickname"

    .line 231
    filled-new-array {v7, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v8, 0x0

    .line 237
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 238
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Get profile image successfully"

    .line 241
    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    array-length v4, v2

    .line 244
    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 243
    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    const/4 v3, 0x1

    .line 245
    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 246
    iput-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const-string v2, "profile image is null"

    .line 248
    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Get profile title successfully"

    .line 253
    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string v2, "profile title is null"

    .line 256
    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 237
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 259
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get profile, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_4
    :goto_4
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 265
    array-length v1, v0

    if-lez v1, :cond_6

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-static {}, Lcom/android/settings/Utils;->getSamsungAccountTitleRes()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    aget-object v0, v0, v8

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getMaskedEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "hide_samsung_account_email"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicyTypeBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 277
    invoke-static {p1}, Lcom/android/settings/Utils;->getTopLevelSummarySeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {p1, v1, v0, v2}, Lcom/android/settings/Utils;->buildSummaryString(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    .line 282
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TopLevelSamsungAccountPreferenceController"

    if-eqz v0, :cond_1

    .line 283
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "show_samsung_account_nick_name"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicyTypeBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "account_nickname"

    .line 285
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "profile nick name are null"

    .line 287
    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Get profile nick name successfully"

    .line 289
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 296
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "extra_info_display_full_name"

    .line 297
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 300
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "profile full name is null"

    .line 301
    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account_family_name"

    .line 307
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "account_given_name"

    .line 308
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "profile family name and given name are null"

    .line 310
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    const-string v2, "Get profile family name and given name successfully"

    .line 312
    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    if-nez p2, :cond_5

    move-object p2, v1

    .line 318
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->isFamilyNameFirst(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%s %s"

    if-eqz p0, :cond_6

    new-array p0, v2, [Ljava/lang/Object;

    aput-object v0, p0, v1

    aput-object p2, p0, p1

    .line 319
    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    aput-object v0, p0, p1

    .line 321
    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 323
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "Get profile full name successfully"

    .line 303
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isFamilyNameFirst(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "ko"

    const-string v1, "zh"

    const-string v2, "ja"

    const-string v3, "th"

    const-string v4, "vi"

    const-string v5, "hu"

    .line 352
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 354
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

    .line 355
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getProfileDataObserver$0()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TopLevelSamsungAccountPreferenceController"

    const-string v1, "profile data updated!"

    .line 184
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getDefault()V

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getSamsungAccountProfile(Landroid/content/Context;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .locals 0

    .line 156
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.osp.app.signin"

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    array-length p0, p0

    if-lez p0, :cond_0

    const-string p0, "TopLevelSamsungAccountPreferenceController"

    const-string p1, "Samsung Account is exist"

    .line 158
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_package:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/settings/PkgUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p0}, Lcom/android/settings/Utils;->getSamsungAccountProfileProviderVersion(Landroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getRequestCode()I
    .locals 0

    const/high16 p0, 0x10000

    return p0
.end method

.method protected getSaLoggingId()I
    .locals 0

    const/16 p0, 0x251c

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 360
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 361
    invoke-static/range {v1 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZZ)V

    .line 370
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->SINGLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getProfileDataObserver()Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TopLevelSamsungAccountPreferenceController"

    const-string v0, "profileProvider register failed."

    .line 124
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 131
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

    const-string v0, "profileProvider unregister failed."

    .line 133
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getDefault()V

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->getSamsungAccountProfile(Landroid/content/Context;)V

    .line 145
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
