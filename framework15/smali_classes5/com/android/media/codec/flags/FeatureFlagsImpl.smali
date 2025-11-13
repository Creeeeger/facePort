.class public final Lcom/android/media/codec/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/media/codec/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist aidlHal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist codecImportance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist largeAudioFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
