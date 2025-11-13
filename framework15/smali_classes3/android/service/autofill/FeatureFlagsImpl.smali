.class public final Landroid/service/autofill/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/service/autofill/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLastFocusedIdToClientState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist addSessionIdToClientState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist autofillCredmanDevIntegration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist autofillCredmanIntegration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist autofillCredmanIntegrationPhase2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist fillFieldsFromCurrentSessionOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist includeInvisibleViewGroupInAssistStructure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist relayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist remoteFillServiceUseWeakReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist test()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
