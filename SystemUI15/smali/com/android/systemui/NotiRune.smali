.class public final Lcom/android/systemui/NotiRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

.field public static final NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

.field public static final NOTI_ONGOING_GEMINI_DEMO:Z

.field public static final NOTI_STYLE_APP_LOCK:Z

.field public static final NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

.field public static final NOTI_SUBSCREEN_ALL:Z

.field public static final NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

.field public static final NOTI_SUBSCREEN_CLEAR_COVER:Z

.field public static final NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

.field public static final NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

.field public static final NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_FOR_CHINA:Z

.field public static final NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_GAUSS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED"

    const-string/jumbo v1, "support"

    invoke-static {v0, v1}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string v2, "On"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x22344

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x224d4

    if-lt v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AI_AGENT"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_ONGOING_GEMINI_DEMO:Z

    const-string/jumbo v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_2

    const-string v4, "persist.debug.subdisplay_test_mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v6, "COVER"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    if-eqz v6, :cond_3

    const-string v7, "WATCHFACE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    sput-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v7, :cond_4

    const-string v8, "LARGESCREEN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    sput-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-nez v7, :cond_6

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move v7, v3

    goto :goto_6

    :cond_6
    :goto_5
    move v7, v2

    :goto_6
    sput-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    const-string v9, "VIRTUAL_DISPLAY"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v4, v3

    goto :goto_8

    :cond_8
    :goto_7
    move v4, v2

    :goto_8
    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    sput-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_9

    sget v6, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v7, 0x22

    if-lt v6, v7, :cond_9

    move v6, v2

    goto :goto_9

    :cond_9
    move v6, v3

    :goto_9
    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_GENAI_SUPPORT_OFFLINE_LANGUAGEMODEL"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v6, "CountryISO"

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_a

    :cond_a
    move v2, v3

    :goto_a
    sput-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

    sput-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    sput-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    const-string v1, "persist.sys.fflag.override.settings_enable_sec_notification_summarize_gauss"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_GAUSS:Z

    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_FOR_CHINA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
