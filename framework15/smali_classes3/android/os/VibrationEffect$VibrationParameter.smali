.class public Landroid/os/VibrationEffect$VibrationParameter;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VibrationParameter"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    invoke-direct {v0, p0}, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;-><init>(F)V

    return-object v0
.end method

.method public static blacklist targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    invoke-direct {v0, p0}, Landroid/os/VibrationEffect$FrequencyVibrationParameter;-><init>(F)V

    return-object v0
.end method
