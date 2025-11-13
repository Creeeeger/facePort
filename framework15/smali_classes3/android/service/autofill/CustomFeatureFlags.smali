.class public Landroid/service/autofill/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/service/autofill/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/autofill/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/autofill/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v10, "android.service.autofill.test"

    const-string v11, ""

    const-string v1, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v2, "android.service.autofill.add_session_id_to_client_state"

    const-string v3, "android.service.autofill.autofill_credman_dev_integration"

    const-string v4, "android.service.autofill.autofill_credman_integration"

    const-string v5, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v6, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v7, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v8, "android.service.autofill.relayout"

    const-string v9, "android.service.autofill.remote_fill_service_use_weak_reference"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addLastFocusedIdToClientState()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.service.autofill.add_last_focused_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addSessionIdToClientState()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.service.autofill.add_session_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanDevIntegration()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_dev_integration"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanIntegration()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autofillCredmanIntegrationPhase2()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration_phase2"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fillFieldsFromCurrentSessionOnly()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.service.autofill.fill_fields_from_current_session_only"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v8, "android.service.autofill.remote_fill_service_use_weak_reference"

    const-string v9, "android.service.autofill.test"

    const-string v0, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v1, "android.service.autofill.add_session_id_to_client_state"

    const-string v2, "android.service.autofill.autofill_credman_dev_integration"

    const-string v3, "android.service.autofill.autofill_credman_integration"

    const-string v4, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v5, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v6, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v7, "android.service.autofill.relayout"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/autofill/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist includeInvisibleViewGroupInAssistStructure()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/service/autofill/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist relayout()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.autofill.relayout"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remoteFillServiceUseWeakReference()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.autofill.remote_fill_service_use_weak_reference"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist test()Z
    .locals 2

    new-instance v0, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.service.autofill.test"

    invoke-virtual {p0, v1, v0}, Landroid/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
