.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callstyleCallbackApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rankingUpdateAshmem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactSensitiveNotificationsBigTextStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactSensitiveNotificationsFromUntrustedListeners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
