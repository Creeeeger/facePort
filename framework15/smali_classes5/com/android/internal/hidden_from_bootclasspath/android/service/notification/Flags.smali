.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags; = null

.field public static final blacklist FLAG_CALLSTYLE_CALLBACK_API:Ljava/lang/String; = "android.service.notification.callstyle_callback_api"

.field public static final blacklist FLAG_RANKING_UPDATE_ASHMEM:Ljava/lang/String; = "android.service.notification.ranking_update_ashmem"

.field public static final blacklist FLAG_REDACT_SENSITIVE_NOTIFICATIONS_BIG_TEXT_STYLE:Ljava/lang/String; = "android.service.notification.redact_sensitive_notifications_big_text_style"

.field public static final blacklist FLAG_REDACT_SENSITIVE_NOTIFICATIONS_FROM_UNTRUSTED_LISTENERS:Ljava/lang/String; = "android.service.notification.redact_sensitive_notifications_from_untrusted_listeners"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist callstyleCallbackApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->callstyleCallbackApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist rankingUpdateAshmem()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->rankingUpdateAshmem()Z

    move-result v0

    return v0
.end method

.method public static blacklist redactSensitiveNotificationsBigTextStyle()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->redactSensitiveNotificationsBigTextStyle()Z

    move-result v0

    return v0
.end method

.method public static blacklist redactSensitiveNotificationsFromUntrustedListeners()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    move-result v0

    return v0
.end method
