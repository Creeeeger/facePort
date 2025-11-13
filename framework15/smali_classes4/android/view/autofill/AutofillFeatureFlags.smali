.class public Landroid/view/autofill/AutofillFeatureFlags;
.super Ljava/lang/Object;
.source "AutofillFeatureFlags.java"


# static fields
.field private static final blacklist DEFAULT_AFAA_ALLOWLIST:Ljava/lang/String; = ""

.field private static final blacklist DEFAULT_AFAA_DENYLIST:Ljava/lang/String; = ""

.field private static final blacklist DEFAULT_AFAA_NON_AUTOFILLABLE_IME_ACTIONS:Ljava/lang/String; = "3,4"

.field private static final blacklist DEFAULT_AFAA_ON_IMPORTANT_VIEW_ENABLED:Z = true

.field private static final blacklist DEFAULT_AFAA_ON_UNIMPORTANT_VIEW_ENABLED:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_ENABLE_AUTOFILL_ON_ALL_VIEW_TYPES:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_ENABLE_MULTILINE_FILTER:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_INCLUDE_ALL_AUTOFILL_TYPE_NOT_NONE_VIEWS_IN_ASSIST_STRUCTURE:Z = true

.field public static final blacklist DEFAULT_AUTOFILL_PCC_CLASSIFICATION_ENABLED:Z = false

.field private static final blacklist DEFAULT_CREDENTIAL_MANAGER_ENABLED:Z = true

.field private static final blacklist DEFAULT_CREDENTIAL_MANAGER_SUPPRESS_FILL_AND_SAVE_DIALOG:Z = true

.field private static final blacklist DEFAULT_FILL_DIALOG_ENABLED_HINTS:Ljava/lang/String; = ""

.field private static final blacklist DEFAULT_HAS_FILL_DIALOG_UI_FEATURE:Z = false

.field public static final blacklist DEFAULT_MAX_INPUT_LENGTH_FOR_AUTOFILL:I = 0x3

.field public static final blacklist DEVICE_CONFIG_ALWAYS_INCLUDE_WEBVIEW_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "always_include_webview_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "augmented_service_idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_REQUEST_TIMEOUT:Ljava/lang/String; = "augmented_service_request_timeout"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_COMPAT_MODE_ALLOWED_PACKAGES:Ljava/lang/String; = "compat_mode_allowed_packages"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_ENABLED:Ljava/lang/String; = "autofill_credential_manager_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_IGNORE_VIEWS:Ljava/lang/String; = "autofill_credential_manager_ignore_views"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_SUPPRESS_FILL_AND_SAVE_DIALOG:Ljava/lang/String; = "autofill_credential_manager_suppress_fill_and_save_dialog"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_ENABLED:Ljava/lang/String; = "autofill_dialog_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_HINTS:Ljava/lang/String; = "autofill_dialog_hints"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_PCC_CLASSIFICATION_ENABLED:Ljava/lang/String; = "pcc_classification_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_PCC_FEATURE_PROVIDER_HINTS:Ljava/lang/String; = "pcc_classification_hints"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_SMART_SUGGESTION_SUPPORTED_MODES:Ljava/lang/String; = "smart_suggestion_supported_modes"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_TOOLTIP_SHOW_UP_DELAY:Ljava/lang/String; = "autofill_inline_tooltip_first_show_delay"

.field public static final blacklist DEVICE_CONFIG_FILL_FIELDS_FROM_CURRENT_SESSION_ONLY:Ljava/lang/String; = "fill_fields_from_current_session_only"

.field public static final blacklist DEVICE_CONFIG_IGNORE_RELAYOUT_WHEN_AUTH_PENDING:Ljava/lang/String; = "ignore_relayout_auth_pending"

.field public static final blacklist DEVICE_CONFIG_IGNORE_VIEW_STATE_RESET_TO_EMPTY:Ljava/lang/String; = "ignore_view_state_reset_to_empty"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_ALL_AUTOFILL_TYPE_NOT_NONE_VIEWS_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_all_autofill_type_not_none_views_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_ALL_VIEWS_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_all_views_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_INVISIBLE_VIEW_GROUP_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_invisible_view_group_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_MAX_INPUT_LENGTH_FOR_AUTOFILL:Ljava/lang/String; = "max_input_length_for_autofill"

.field public static final blacklist DEVICE_CONFIG_MULTILINE_FILTER_ENABLED:Ljava/lang/String; = "multiline_filter_enabled"

.field public static final blacklist DEVICE_CONFIG_NON_AUTOFILLABLE_IME_ACTION_IDS:Ljava/lang/String; = "non_autofillable_ime_action_ids"

.field public static final blacklist DEVICE_CONFIG_PACKAGE_AND_ACTIVITY_ALLOWLIST_FOR_TRIGGERING_FILL_REQUEST:Ljava/lang/String; = "package_and_activity_allowlist_for_triggering_fill_request"

.field public static final blacklist DEVICE_CONFIG_PACKAGE_DENYLIST_FOR_UNIMPORTANT_VIEW:Ljava/lang/String; = "package_deny_list_for_unimportant_view"

.field public static final blacklist DEVICE_CONFIG_PCC_USE_FALLBACK:Ljava/lang/String; = "pcc_use_fallback"

.field public static final blacklist DEVICE_CONFIG_PREFER_PROVIDER_OVER_PCC:Ljava/lang/String; = "prefer_provider_over_pcc"

.field public static final blacklist DEVICE_CONFIG_SHOULD_ENABLE_AUTOFILL_ON_ALL_VIEW_TYPES:Ljava/lang/String; = "should_enable_autofill_on_all_view_types"

.field public static final blacklist DEVICE_CONFIG_TRIGGER_FILL_REQUEST_ON_FILTERED_IMPORTANT_VIEWS:Ljava/lang/String; = "trigger_fill_request_on_filtered_important_views"

.field public static final blacklist DEVICE_CONFIG_TRIGGER_FILL_REQUEST_ON_UNIMPORTANT_VIEW:Ljava/lang/String; = "trigger_fill_request_on_unimportant_view"

.field private static final blacklist DIALOG_HINTS_DELIMITER:Ljava/lang/String; = ":"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAllowlistStringFromFlag()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "package_and_activity_allowlist_for_triggering_fill_request"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDenylistStringFromFlag()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "package_deny_list_for_unimportant_view"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFillDialogEnabledHints()[Ljava/lang/String;
    .locals 4

    const-string v0, "autofill_dialog_hints"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist getNonAutofillableImeActionIdSetFromFlag()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "non_autofillable_ime_action_ids"

    const-string v1, "3,4"

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static blacklist isAutofillPccClassificationEnabled()Z
    .locals 3

    const-string/jumbo v0, "pcc_classification_enabled"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCredentialManagerEnabled()Z
    .locals 3

    const-string v0, "autofill_credential_manager_enabled"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFillAndSaveDialogDisabledForCredentialManager()Z
    .locals 3

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isCredentialManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "autofill"

    const-string v1, "autofill_credential_manager_suppress_fill_and_save_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static blacklist isFillDialogEnabled()Z
    .locals 3

    const-string v0, "autofill_dialog_enabled"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTriggerFillRequestOnFilteredImportantViewsEnabled()Z
    .locals 3

    const-string/jumbo v0, "trigger_fill_request_on_filtered_important_views"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTriggerFillRequestOnUnimportantViewEnabled()Z
    .locals 3

    const-string/jumbo v0, "trigger_fill_request_on_unimportant_view"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getFillDialogEnabledHints$0(I)[Ljava/lang/String;
    .locals 1

    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$getFillDialogEnabledHints$1(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldAlwaysIncludeWebviewInAssistStructure()Z
    .locals 3

    const-string v0, "always_include_webview_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldEnableAutofillOnAllViewTypes()Z
    .locals 3

    const-string/jumbo v0, "should_enable_autofill_on_all_view_types"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldEnableMultilineFilter()Z
    .locals 3

    const-string/jumbo v0, "multiline_filter_enabled"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldFillFieldsFromCurrentSessionOnly()Z
    .locals 3

    const-string v0, "fill_fields_from_current_session_only"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIgnoreRelayoutWhenAuthPending()Z
    .locals 3

    const-string v0, "ignore_relayout_auth_pending"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIgnoreViewStateResetToEmpty()Z
    .locals 3

    const-string v0, "ignore_view_state_reset_to_empty"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeAllChildrenViewInAssistStructure()Z
    .locals 3

    const-string v0, "include_all_views_in_assist_structure"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeAllViewsAutofillTypeNotNoneInAssistStructrue()Z
    .locals 3

    const-string v0, "include_all_autofill_type_not_none_views_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeInvisibleViewInAssistStructure()Z
    .locals 3

    const-string v0, "include_invisible_view_group_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
