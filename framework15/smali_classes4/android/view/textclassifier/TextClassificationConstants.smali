.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final blacklist DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

.field static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final greylist-max-o SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final greylist-max-o SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final greylist-max-o SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final blacklist SMART_SELECTION_TRIM_DELTA:Ljava/lang/String; = "smart_selection_trim_delta"

.field private static final blacklist SMART_SELECTION_TRIM_DELTA_DEFAULT:I = 0x78

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND:Ljava/lang/String; = "system_textclassifier_api_timeout_in_second"

.field private static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND_DEFAULT:J = 0x3cL

.field static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field static final blacklist TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String; = "textclassifier_service_package_override"

.field private static blacklist sGenerateLinksMaxTextLength:I

.field private static blacklist sLocalTextClassifierEnabled:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static volatile blacklist sMemoizedValuesInitialized:Z

.field private static blacklist sModelDarkLaunchEnabled:Z

.field private static blacklist sSmartLinkifyEnabled:Z

.field private static blacklist sSmartSelectAnimationEnabled:Z

.field private static blacklist sSmartSelectionEnabled:Z

.field private static blacklist sSmartSelectionTrimDelta:I

.field private static blacklist sSmartTextShareEnabled:Z

.field private static blacklist sSystemTextClassifierApiTimeoutInSecond:J

.field private static blacklist sSystemTextClassifierEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensureMemoizedValues()V
    .locals 7

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassificationConstants;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string/jumbo v1, "textclassifier"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    const-string v3, "local_textclassifier_enabled"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/view/textclassifier/TextClassificationConstants;->sLocalTextClassifierEnabled:Z

    const-string/jumbo v3, "model_dark_launch_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sModelDarkLaunchEnabled:Z

    const-string/jumbo v2, "smart_selection_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionEnabled:Z

    const-string/jumbo v2, "smart_text_share_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartTextShareEnabled:Z

    const-string/jumbo v2, "smart_linkify_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartLinkifyEnabled:Z

    const-string/jumbo v2, "smart_select_animation_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectAnimationEnabled:Z

    const-string v2, "generate_links_max_text_length"

    const v3, 0x186a0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/view/textclassifier/TextClassificationConstants;->sGenerateLinksMaxTextLength:I

    const-string/jumbo v2, "system_textclassifier_api_timeout_in_second"

    const-wide/16 v5, 0x3c

    invoke-virtual {v1, v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/view/textclassifier/TextClassificationConstants;->sSystemTextClassifierApiTimeoutInSecond:J

    const-string/jumbo v2, "smart_selection_trim_delta"

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionTrimDelta:I

    sput-boolean v4, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist resetMemoizedValues()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sMemoizedValuesInitialized:Z

    return-void
.end method


# virtual methods
.method blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "TextClassificationConstants:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generate_links_max_text_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "local_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "model_dark_launch_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_linkify_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_select_animation_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_selection_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_text_share_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "system_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    nop

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textclassifier_service_package_override"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    nop

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSystemTextClassifierApiTimeoutInSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "system_textclassifier_api_timeout_in_second"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "smart_selection_trim_delta"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public greylist-max-o getGenerateLinksMaxTextLength()I
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget v0, Landroid/view/textclassifier/TextClassificationConstants;->sGenerateLinksMaxTextLength:I

    return v0
.end method

.method public blacklist getSmartSelectionTrimDelta()I
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionTrimDelta:I

    return v0
.end method

.method public blacklist getSystemTextClassifierApiTimeoutInSecond()J
    .locals 2

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-wide v0, Landroid/view/textclassifier/TextClassificationConstants;->sSystemTextClassifierApiTimeoutInSecond:J

    return-wide v0
.end method

.method public blacklist getTextClassifierServicePackageOverride()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "textclassifier_service_package_override"

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    const-string/jumbo v2, "textclassifier"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isLocalTextClassifierEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sLocalTextClassifierEnabled:Z

    return v0
.end method

.method public greylist-max-o isModelDarkLaunchEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sModelDarkLaunchEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartLinkifyEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartLinkifyEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartSelectionAnimationEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectAnimationEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartSelectionEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartSelectionEnabled:Z

    return v0
.end method

.method public greylist-max-o isSmartTextShareEnabled()Z
    .locals 1

    invoke-static {}, Landroid/view/textclassifier/TextClassificationConstants;->ensureMemoizedValues()V

    sget-boolean v0, Landroid/view/textclassifier/TextClassificationConstants;->sSmartTextShareEnabled:Z

    return v0
.end method

.method public greylist-max-o isSystemTextClassifierEnabled()Z
    .locals 3

    const-string/jumbo v0, "system_textclassifier_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "textclassifier"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
