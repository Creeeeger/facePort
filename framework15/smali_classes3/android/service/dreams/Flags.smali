.class public final Landroid/service/dreams/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags; = null

.field public static final blacklist FLAG_DISMISS_DREAM_ON_KEYGUARD_DISMISS:Ljava/lang/String; = "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

.field public static final blacklist FLAG_DREAM_HANDLES_BEING_OBSCURED:Ljava/lang/String; = "android.service.dreams.dream_handles_being_obscured"

.field public static final blacklist FLAG_DREAM_HANDLES_CONFIRM_KEYS:Ljava/lang/String; = "android.service.dreams.dream_handles_confirm_keys"

.field public static final blacklist FLAG_DREAM_OVERLAY_HOST:Ljava/lang/String; = "android.service.dreams.dream_overlay_host"

.field public static final blacklist FLAG_DREAM_WAKE_REDIRECT:Ljava/lang/String; = "android.service.dreams.dream_wake_redirect"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/dreams/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/service/dreams/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist dismissDreamOnKeyguardDismiss()Z
    .locals 1

    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dismissDreamOnKeyguardDismiss()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamHandlesBeingObscured()Z
    .locals 1

    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamHandlesBeingObscured()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamHandlesConfirmKeys()Z
    .locals 1

    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamHandlesConfirmKeys()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamOverlayHost()Z
    .locals 1

    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamOverlayHost()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamWakeRedirect()Z
    .locals 1

    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamWakeRedirect()Z

    move-result v0

    return v0
.end method
