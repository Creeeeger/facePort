.class public abstract Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# static fields
.field public static final AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "RcsUtils"

.field public static final RCS_ENRICHED_CALLING_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM1:Landroid/net/Uri;

.field public static final RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM2:Landroid/net/Uri;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

.field public static final SUPPORT_DUAL_RCS_SETTINGS_URI:Landroid/net/Uri;

.field public static final SUPPORT_DUAL_RCS_URI:Landroid/net/Uri;

.field private static mDualInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private static mSingleInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field protected mContext:Landroid/content/Context;

.field protected mPhoneId:I

.field protected mRcsConfigVers:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 48
    invoke-static {v0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/rcsprofile"

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    .line 51
    invoke-static {v0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/rcs_enriched_calling"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    .line 54
    invoke-static {v0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/support_dual_rcs_settings"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->SUPPORT_DUAL_RCS_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/support_dual_rcs"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->SUPPORT_DUAL_RCS_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->mSingleInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 62
    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->mDualInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    return-void
.end method

.method public static buildUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    .line 440
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simslot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .locals 1

    const-string v0, "dual"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    sget-object p1, Lcom/samsung/android/settings/rcs/RcsUtils;->mDualInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/samsung/android/settings/rcs/RcsUtils;->mDualInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 73
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mDualInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object p0

    .line 75
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/rcs/RcsUtils;->mSingleInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez p1, :cond_2

    .line 76
    new-instance p1, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/samsung/android/settings/rcs/RcsUtils;->mSingleInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 78
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mSingleInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object p0
.end method

.method public static isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 453
    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected checkMdmRcsStatus()Z
    .locals 9

    const-string v0, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "1"

    const-string v7, "false"

    .line 342
    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "isRCSEnabled"

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 349
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Disabled RCS "

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    move v8, p0

    .line 357
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 359
    throw p0

    :cond_1
    :goto_0
    return v8
.end method

.method public checkds()Z
    .locals 1

    const-string p0, "persist.radio.multisim.config"

    .line 445
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dsds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEnrichedCallingEnabled(I)Z
    .locals 9

    .line 260
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 264
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 266
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_ENRICHED_CALLING_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    move-object v4, v0

    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "rcs_enriched_calling"

    if-eqz p0, :cond_2

    .line 273
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 p0, 0x0

    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    .line 282
    :cond_4
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_5

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    .line 287
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, p0

    .line 289
    :goto_1
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnrichedCallingService["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_7
    throw p0
.end method

.method public abstract getPermanentDisable()Z
.end method

.method public getRcsAutoconfigVers(I)Z
    .locals 6

    .line 368
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "parameter/version"

    const-string v2, "#simslot\\d"

    const-string v3, ""

    .line 371
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 379
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 380
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 384
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsConfigVers:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    if-eqz v0, :cond_2

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return p0

    .line 387
    :catch_0
    :try_start_3
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_6
    throw p0
.end method

.method public getRcsProfile(I)Ljava/lang/String;
    .locals 8

    .line 301
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 305
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 307
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    move-object v2, v0

    const/4 v0, 0x0

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "rcsprofile"

    if-eqz p0, :cond_2

    .line 314
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const-string p0, ""

    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    .line 323
    :cond_4
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 328
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 330
    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcsProfile["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_6
    throw p0
.end method

.method public getRcsUserSetting()I
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "rcs_user_setting2"

    goto :goto_0

    :cond_0
    const-string v0, "rcs_user_setting"

    .line 420
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 422
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsUserSetting: rcsSettingValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getRcsUserSetting(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "rcs_user_setting2"

    goto :goto_0

    :cond_0
    const-string p1, "rcs_user_setting"

    .line 405
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 407
    sget-object p1, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsUserSetting: rcsSettingValue is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isChecked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract isDisabledBySetting(Ljava/lang/String;)Z
.end method

.method public isDisabledForUser(Ljava/lang/String;)Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.rcs"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 102
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : RCS application is not installed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 106
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DISABLE_ON_DS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : RCS is disabled by DISABLE_ON_DS in others.xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isDisabledBySetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isEnrichedCallingEnabled()Z

    move-result p0

    const-string v0, "BB"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p0, :cond_4

    .line 117
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isEnrichedCallingEnabled()Z
.end method

.method public isMainSwitchVisible(I)Z
    .locals 9

    .line 125
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 129
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 131
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    move-object v4, v0

    const/4 p1, 0x0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v0, "master_switch"

    if-eqz p0, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :cond_2
    const/4 p0, 0x0

    if-nez p1, :cond_3

    return p0

    .line 147
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    .line 152
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, p0

    .line 155
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setRcsUserSetting(Z)Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "rcs_user_setting2"

    goto :goto_0

    :cond_0
    const-string v0, "rcs_user_setting"

    .line 434
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 435
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRcsUserSetting: set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "successful: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public showAlertDialog(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 8

    .line 465
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 471
    sget v2, Lcom/android/settings/R$string;->rcs_settings_pheader_change_default_message_app:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    sget v3, Lcom/android/settings/R$string;->rcs_button_change:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    sget v4, Lcom/android/settings/R$string;->rcs_button_cancel:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    sget v5, Lcom/android/settings/R$string;->rcs_settings_body_popup_change_default_message_app:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 475
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 478
    new-instance p2, Lcom/samsung/android/settings/rcs/RcsUtils$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/settings/rcs/RcsUtils$1;-><init>(Lcom/samsung/android/settings/rcs/RcsUtils;ZLandroid/content/Context;)V

    invoke-virtual {v0, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    new-instance p1, Lcom/samsung/android/settings/rcs/RcsUtils$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/rcs/RcsUtils$2;-><init>(Lcom/samsung/android/settings/rcs/RcsUtils;)V

    invoke-virtual {v0, v4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 497
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public supportDualRcsSettings()Z
    .locals 7

    .line 165
    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->SUPPORT_DUAL_RCS_SETTINGS_URI:Landroid/net/Uri;

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v6, "support_dual_rcs_settings"

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 178
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    .line 183
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 187
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public updateAlertDialog()V
    .locals 0

    return-void
.end method
