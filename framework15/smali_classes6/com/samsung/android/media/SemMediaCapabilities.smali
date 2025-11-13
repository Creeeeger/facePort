.class public Lcom/samsung/android/media/SemMediaCapabilities;
.super Ljava/lang/Object;
.source "SemMediaCapabilities.java"


# static fields
.field public static final blacklist FEATURE_HARDWARE_C2:Ljava/lang/String; = "sec.media.feature.c2"

.field private static final blacklist TAG:Ljava/lang/String; = "SemMediaCapabilities"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "secrecorder_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeInit()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFeatureSupported(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeIsFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final native blacklist nativeInit()V
.end method

.method private static native blacklist nativeIsFeatureSupported(Ljava/lang/String;)Z
.end method
