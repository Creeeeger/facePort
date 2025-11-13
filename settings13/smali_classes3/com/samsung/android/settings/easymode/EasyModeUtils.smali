.class Lcom/samsung/android/settings/easymode/EasyModeUtils;
.super Ljava/lang/Object;
.source "EasyModeUtils.java"


# static fields
.field public static sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String; = ""

.field public static sSamsungKeypadInputMethodId:Ljava/lang/String; = ""

.field public static sSamsungKeypadPackageName:Ljava/lang/String; = ""

.field public static sSamsungKeypadProvider:Ljava/lang/String; = ""


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->loadSamsungKeyboardConstants()V

    return-void
.end method

.method private getTapDurationDisabledTouchAndHoldSummary(I)Ljava/lang/String;
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->long_press_timeout_titles_selector:I

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f4

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5dc

    if-eq p1, v1, :cond_0

    .line 243
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->touch_and_hold_custom_seconds:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 244
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float p1, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "%.2f"

    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 243
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x3

    .line 241
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    .line 239
    aget-object p0, v0, p0

    return-object p0

    .line 237
    :cond_2
    aget-object p0, v0, v3

    return-object p0

    .line 235
    :cond_3
    aget-object p0, v0, v2

    return-object p0
.end method

.method private isHoneyBoardInstalled()Z
    .locals 2

    .line 254
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    const-string v1, "com.sec.android.inputmethod"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSamsungImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "com.samsung.android.honeyboard"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return p0
.end method

.method private isTapDurationEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "tap_duration_enabled"

    const/4 v0, 0x0

    .line 249
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private loadSamsungKeyboardConstants()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHoneyBoardInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.honeyboard"

    .line 63
    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 64
    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".settings.styleandlayout.highcontrast.HighContrastThemeSettings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.sec.android.inputmethod"

    .line 68
    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    const-string v0, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    .line 69
    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".implement.setting.HighContrastThemeSettings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 78
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isSamsungImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadInputMethodId:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method announceForEasyModeOperation(Z)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4000

    .line 289
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 292
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->easy_mode_on_accessibility_desc:I

    .line 293
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->easy_mode_off_accessibility_desc:I

    .line 295
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method getSummaryFromKeyboard()Ljava/lang/String;
    .locals 10

    const-string v0, "NAME"

    const-string v1, "high_contrast_theme_name"

    .line 151
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 157
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 160
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VALUE"

    .line 163
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, p0

    goto :goto_1

    :catch_0
    move-object v9, v8

    move-object v8, p0

    move-object p0, v9

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_4

    .line 172
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_2
    throw v0

    :catch_1
    move-object p0, v8

    :goto_2
    if-eqz v8, :cond_3

    .line 172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, p0

    :cond_4
    :goto_3
    return-object v8
.end method

.method getTouchAndHoldSummaryByValue(I)Ljava/lang/CharSequence;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 217
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isTapDurationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->longpress_preference_summary_with_tap_duration_one_sec:I

    .line 220
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->longpress_preference_summary_with_tap_duration:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    .line 223
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 222
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->getTapDurationDisabledTouchAndHoldSummary(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isHighContrastKeyboardOn()Z
    .locals 10

    const-string v0, "NAME"

    const-string v1, ""

    const-string v2, "high_contrast_keyboard"

    .line 116
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 122
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 123
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    .line 126
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 128
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VALUE"

    .line 130
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_3

    .line 140
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :catch_0
    :cond_2
    throw p0

    :catch_1
    if-eqz v9, :cond_3

    goto :goto_1

    :catch_2
    :cond_3
    :goto_2
    const-string p0, "1"

    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isOneHandInputKeyboardEnabled()Z
    .locals 11

    const-string v0, "Exception caught while closing cursor"

    const-string v1, "EasyModeUtils"

    const-string v2, "use_one_hand_operation"

    .line 186
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "NAME"

    .line 193
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VALUE"

    .line 195
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    .line 205
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 208
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    :try_start_2
    const-string p0, "Exception caught while fetching value of use_one_hand_operation"

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v9

    :goto_3
    if-eqz v10, :cond_3

    .line 205
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 208
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_3
    :goto_4
    throw p0
.end method

.method isSamsungKeyboardSetAsDefault()Z
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadInputMethodId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method putValueToKeyboard(Ljava/lang/String;)V
    .locals 2

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "high_contrast_keyboard"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EasyModeUtils"

    const-string p1, "putValueToKeyboard couldn\'t be executed."

    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method showPinWindowToast()V
    .locals 2

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v1

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget v0, Lcom/android/settings/R$string;->tw_lock_to_app_toast_accessible:I

    goto :goto_1

    .line 267
    :cond_0
    sget v0, Lcom/android/settings/R$string;->tw_lock_to_app_toast:I

    goto :goto_1

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    sget v0, Lcom/android/settings/R$string;->sem_lock_to_app_toast_accessible:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 277
    :cond_3
    sget v0, Lcom/android/settings/R$string;->sem_lock_to_app_toast:I

    goto :goto_1

    .line 275
    :cond_4
    :goto_0
    sget v0, Lcom/android/settings/R$string;->screen_pinning_msg_in_gesture:I

    .line 281
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    return-void
.end method
