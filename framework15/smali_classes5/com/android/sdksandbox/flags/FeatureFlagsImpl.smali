.class public final Lcom/android/sdksandbox/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/sdksandbox/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist firstAndLastSdkSandboxUidPublic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist getEffectiveTargetSdkVersionApi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist sandboxActivitySdkBasedContext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist sandboxClientImportanceListener()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist sdkSandboxDexVerifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist sdkSandboxInstrumentationInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist sdkSandboxUidToAppUidApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist selinuxInputSelector()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist selinuxSdkSandboxAudit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
