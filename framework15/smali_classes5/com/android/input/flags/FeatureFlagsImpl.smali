.class public final Lcom/android/input/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/input/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist a11yCrashOnInconsistentEventStream()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist deviceAssociations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableRejectTouchOnStylusHover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableGesturesLibraryTimerProvider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableInboundEventVerification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableInputEventTracing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableInputFilterRustImpl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableKeyboardClassifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMultiDeviceInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMultiDeviceSameWindowStream()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableNewMousePointerBallistics()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOutboundEventVerification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePredictionPruningViaJerkThresholding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableTouchpadFlingStop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableTouchpadTypingPalmRejection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableV2TouchpadTypingPalmRejection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist hidePointerIndicatorsForSecureWindows()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist inputDeviceViewBehaviorApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist overrideKeyBehaviorPermissionApis()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitUserActivityPokeInDispatcher()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist removePointerEventTrackingInWm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist reportPalmsToGesturesLibrary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
