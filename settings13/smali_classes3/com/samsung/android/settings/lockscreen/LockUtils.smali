.class public Lcom/samsung/android/settings/lockscreen/LockUtils;
.super Ljava/lang/Object;
.source "LockUtils.java"


# static fields
.field private static final CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

.field private static uiCoverLists:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    .line 112
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 135
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockUtils;->uiCoverLists:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x8
        0xf
        0x10
    .end array-data
.end method

.method private static createFaceWidgetDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static disableAllFaceWidget(Landroid/content/Context;)V
    .locals 6

    .line 592
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAllFaceWidgetInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    .line 594
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v4, v0, v2

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAODTimeToInt(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x1a4

    const-string v0, "aod_mode_start_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "aod_mode_end_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAboutLockscreenMenuIntent(Z)Landroid/content/Intent;
    .locals 2

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.clockpack.intent.action.ABOUT_CLOCK_STYLE"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000000

    .line 371
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private static getAdminUid(Landroid/content/Context;I)I
    .locals 2

    .line 410
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error fetching admin uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getAllFaceWidgetInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_widget_order"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 565
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "servicebox_music;servicebox_calendar;servicebox_alarm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 569
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 576
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 578
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getClockStyleSettingsIntent()Landroid/content/Intent;
    .locals 2

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.clockpack.intent.action.LOCKSCREEN_CLOCKSTYLE"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getColorAdjustmentType(Landroid/content/Context;)I
    .locals 2

    .line 1126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_adjustment_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getColorFromAttribute(Landroid/content/Context;II)I
    .locals 3

    if-nez p0, :cond_0

    return p2

    .line 1150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    .line 1154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    .line 1158
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1160
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    .line 1161
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1162
    iget v0, v1, Landroid/util/TypedValue;->data:I

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1163
    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return p2
.end method

.method public static getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "servicebox_calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "servicebox_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "servicebox_alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v0, "#"

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez p2, :cond_5

    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "face_widget_res_id"

    invoke-static {p2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ";"

    .line 517
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v3, ""

    move v4, v2

    move-object v5, v3

    .line 518
    :goto_1
    array-length v6, p2

    if-ge v4, v6, :cond_4

    .line 520
    aget-object v6, p2, v4

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 521
    aget-object v5, p2, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 522
    aget-object v5, v5, v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 526
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 528
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 529
    aget-object p1, p1, v2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NumberFormatException "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 535
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->createFaceWidgetDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    .line 540
    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->createFaceWidgetDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v3, p0

    goto :goto_3

    :pswitch_0
    if-nez p2, :cond_8

    .line 506
    sget p1, Lcom/android/settings/R$string;->today_schedule:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    const-string p0, "add_info_today_schedule"

    goto :goto_2

    :pswitch_1
    if-nez p2, :cond_9

    .line 502
    sget p1, Lcom/android/settings/R$string;->common_music_controller:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_9
    const-string p0, "add_info_music_control"

    goto :goto_2

    :pswitch_2
    if-nez p2, :cond_a

    .line 510
    sget p1, Lcom/android/settings/R$string;->next_alarm:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_a
    const-string p0, "add_info_alarm"

    goto :goto_2

    :goto_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55117438 -> :sswitch_2
        -0x54640064 -> :sswitch_1
        0x21ca6267 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFaceWidgetLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 551
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LockUtils"

    const-string p1, "getFaceWidgetLabel : NameNotFoundException"

    .line 553
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFaceWidgetListDefaultValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "servicebox_music"

    .line 585
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "servicebox_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.routines#dashboard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getFmmDialogIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fmm_unlock_recovery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 649
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportFMM(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 653
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.fmm"

    .line 654
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.fmm.action.UserpppDialog"

    .line 655
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "type"

    .line 656
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public static getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 661
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportFMM(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 665
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.fmm"

    .line 666
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sec.pcw.device.FMM_PPP_SERVICE"

    .line 667
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p0

    const-string v0, "usrPPP"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p1
.end method

.method private static getLocaleString(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_0

    .line 957
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSubScreenClockStyleSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

    if-eqz v1, :cond_0

    const-string p0, "com.samsung.android.app.clockpack.intent.action.SUBSCREEN_CHOOSE"

    .line 360
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.samsung.android.app.clockpack.intent.action.CAMERA_COVER_SCREEN_CLOCK_STYLE"

    .line 362
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .line 1189
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1191
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load UserManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAODBlockonSmartView(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "display"

    .line 1009
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1010
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 1012
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v5

    if-eq v5, v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v6

    if-eq v6, v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v0, :cond_5

    .line 1014
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDlnaDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isGoogleCastConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    .line 1015
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wireless_dex"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    .line 1016
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_6

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    return v3
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "psm_always_on_display_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 208
    aget-object p0, p0, v0

    const-string v0, "1"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "aod_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public static isApplyingSetupTheme(Landroid/content/Context;)Z
    .locals 2

    .line 747
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isApplyingTabletGUI(Landroid/content/Context;)Z
    .locals 2

    .line 753
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 756
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isCameraCoverAttached(Landroid/content/Context;)Z
    .locals 1

    .line 1109
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 1111
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1112
    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1120
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isColorBlindSwitchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_blind"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDisabledClockStyle(Landroid/content/Context;)Z
    .locals 4

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 280
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNetworkRoamingState(Landroid/content/Context;)Z

    move-result v3

    .line 281
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isIgnoreNationalRoaming(Landroid/content/Context;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isDisabledLockScreenPolicy()Z
    .locals 2

    .line 1197
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_POLICY_LIST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isDlnaDeviceConnected(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "display"

    .line 1034
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1035
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1036
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDlnaDeviceConnected : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LockUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDomesticRoaming(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 324
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 325
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDomesticRoaming called, VoiceRoamingType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DataRoamingType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    .line 778
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 779
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 761
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 762
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isFmmUnlockAllowed(Landroid/content/Context;IZ)Z
    .locals 3

    .line 674
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 675
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isClearLockAllowed()Z

    move-result p0

    move v1, p0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FMM unlock is not allowed for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public static isGoogleCastConnected(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "media_router"

    .line 1022
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter;

    const/4 v0, 0x4

    .line 1023
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    .line 1025
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Audio Mirroring"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1029
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGoogleCastConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isIconStyleEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "lockscreen_minimizing_notification"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isIgnoreNationalRoaming(Landroid/content/Context;)Z
    .locals 3

    .line 294
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v1, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "IgnoreNationalRoamingWithMNC"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "phone"

    .line 299
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    const-string v1, "21901"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const-string p0, "IgnoreNationalRoamingWithOptus"

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "gsm.sim.operator.numeric"

    const-string v0, ""

    .line 305
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "50503"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isInMultiWindow(Landroid/app/Activity;)Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/window/embedding/SplitController;->Companion:Landroidx/window/embedding/SplitController$Companion;

    invoke-virtual {v0}, Landroidx/window/embedding/SplitController$Companion;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLockMenuDisabledByEdm(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "false"

    .line 397
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isLockScreenEnabled"

    .line 398
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLockSettingsBlockonDexMode(Landroid/content/Context;)Z
    .locals 1

    .line 1005
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNetworkRoamingState(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "phone"

    .line 700
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "LockUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 703
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isRoamingWithVoiceOnly()Z

    move-result v3

    const-string v4, " roaming="

    const-string v5, "isNetworkRoamingState id="

    if-eqz v3, :cond_4

    .line 705
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 707
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v3

    .line 708
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result v6

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNetworkRoamingState isPsOnlyReg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " radioTechType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 711
    invoke-static {v6}, Lcom/android/internal/telephony/SemTelephonyHelper;->isLte(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSprDisplayRoam()Z

    move-result p0

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoamingState roaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, p0

    goto/16 :goto_2

    .line 715
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    .line 716
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v3, :cond_1

    .line 719
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 721
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 724
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vrs="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " drs="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vrt="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " drt="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p0, "isNetworkRoamingState no ServiceState"

    .line 732
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 735
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p0, "isNetworkRoamingState no TelephonyManager"

    .line 740
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1
.end method

.method public static isNotAODSettingTime(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    .line 155
    invoke-static {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAODTimeToInt(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, 0x0

    .line 156
    invoke-static {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAODTimeToInt(Landroid/content/Context;Z)I

    move-result p0

    if-ne v1, p0, :cond_0

    return v2

    .line 162
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xc

    .line 165
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    .line 166
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    if-ge v1, p0, :cond_2

    if-lt v3, v1, :cond_1

    if-le v3, p0, :cond_3

    :cond_1
    return v0

    :cond_2
    if-ge v3, v1, :cond_3

    if-le v3, p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public static isOverseaArea(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 314
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p0

    .line 315
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    const-string v0, "ril.currentplmn"

    const-string v1, ""

    .line 316
    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "oversea"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 260
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " package not found exception package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isRoamingWithVoiceOnly()Z
    .locals 2

    .line 695
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v1, "RoamingWithVoiceOnly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSmartMirroringConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "media_router"

    .line 994
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter;

    const/4 v0, 0x4

    .line 996
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static isSubDisplay(Landroid/content/Context;)Z
    .locals 2

    .line 802
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isWinnerProduct()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportActionBarButton(Landroid/content/Context;)Z
    .locals 4

    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 877
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v3

    .line 878
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isSupportAodService()Z
    .locals 3

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aodversion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFMM(Landroid/content/Context;)Z
    .locals 7

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.fmm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.samsung.android.fmm/fmmsupport"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string v0, "fmmsupport"

    .line 622
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 623
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockUtils"

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support FMM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 631
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 632
    throw v0

    .line 631
    :catch_0
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportHijriCalendar(Landroid/content/Context;)Z
    .locals 3

    .line 949
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getLocaleString(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    .line 950
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 951
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_SupportHijriLunarCalendar"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isSupportLunarCalendarMenu(Landroid/content/Context;)Z
    .locals 6

    .line 940
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getLocaleString(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 941
    invoke-static {}, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->getInstance()Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->isLunarCalendarSupported()Z

    move-result v0

    const-string v1, "en"

    .line 942
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 943
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "VI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    .line 944
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportLunarCalendarMenu : isSupportLunar : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Locale : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSupportLunarInVietnam : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isSupportPowerKey()Z
    .locals 1

    const/16 v0, 0x1a

    .line 389
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportSubLockscreen()Z
    .locals 3

    .line 936
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCKSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z
    .locals 6

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.samsung.android.app.aodservice.provider/settings/aod_content_to_show"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 230
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 231
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 237
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 235
    :try_start_1
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 238
    throw v0

    :cond_1
    :goto_2
    move v1, v0

    :goto_3
    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isWinnerProduct()Z
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    .line 794
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "winner"

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 5

    .line 963
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    return v1

    .line 968
    :cond_0
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 969
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result p0

    const-string v2, "LockUtils"

    if-nez p0, :cond_1

    const-string p0, "readGoogleFRPFlag : service is not Connected"

    .line 972
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 976
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result p0

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readGoogleFRPFlag : getServiceSupport is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq p0, v3, :cond_2

    const-string p0, "readGoogleFRPFlag : feature is not supported"

    .line 979
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 983
    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result p0

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-ne p0, v3, :cond_4

    :cond_3
    move v1, v0

    .line 988
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readGoogleFRPFlag : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setForegroundTintList(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/PorterDuff$Mode;I)V
    .locals 0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0xff

    if-gez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    if-le p4, p0, :cond_2

    move p4, p0

    .line 1183
    :cond_2
    :goto_0
    invoke-static {p2, p4}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 1184
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1185
    invoke-virtual {p1, p3}, Landroid/view/View;->setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static updateAttemptLockoutDesc(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 840
    div-long v0, p1, v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x3c

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const-wide/32 v3, 0xea60

    .line 842
    div-long v3, p1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    rem-int/2addr v3, v1

    add-int/2addr v3, v2

    const-wide/32 v4, 0x36ee80

    .line 843
    div-long/2addr p1, v4

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x0

    if-lez p1, :cond_3

    if-ne v3, v1, :cond_0

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_hour:I

    add-int/2addr p1, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 848
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    .line 847
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_1_hour_and_min:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 851
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 850
    invoke-virtual {p0, p1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-le p1, v2, :cond_2

    if-ne v3, v2, :cond_2

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_hour_and_1_min:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    .line 853
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 856
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_hour_and_min:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-le v3, v2, :cond_4

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_min:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 867
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 866
    invoke-virtual {p0, p1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 869
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->sec_lockscreen_confirm_too_many_failed_attempts_countdown_sec:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 870
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    .line 869
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 422
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "LockUtils"

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "Setting password change requested inner"

    .line 424
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p0, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->setPwdChangeRequestedForInner(Landroid/content/Context;I)V

    :cond_1
    return v2

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enable_one_lock_ongoing"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 432
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAdminUid(Landroid/content/Context;I)I

    move-result v1

    .line 433
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 436
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 437
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v5

    goto :goto_0

    .line 440
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 442
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v5

    :cond_5
    :goto_0
    if-eqz v5, :cond_6

    .line 446
    invoke-virtual {v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "Setting password change requested"

    .line 447
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 451
    :cond_6
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x20000000

    .line 452
    invoke-static {p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    .line 455
    :cond_7
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v4, "keyguard"

    .line 456
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 457
    invoke-virtual {v4, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "trust"

    .line 458
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/TrustManager;

    .line 459
    invoke-virtual {v4, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 461
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 465
    :cond_8
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordType(I)I

    move-result v1

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KNOX Analytics Logging Event for Auth change : P/P/P Type= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CHANGE_LOCK_TYPE"

    .line 467
    invoke-static {p0, p1, v3, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return v0
.end method
