.class Landroid/os/HapticPlayer$StepParameter;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StepParameter"
.end annotation


# instance fields
.field private final blacklist amplitude:F

.field private final blacklist duration:I

.field private final blacklist frequency:F


# direct methods
.method constructor blacklist <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/HapticPlayer$StepParameter;->amplitude:F

    iput p2, p0, Landroid/os/HapticPlayer$StepParameter;->frequency:F

    iput p3, p0, Landroid/os/HapticPlayer$StepParameter;->duration:I

    return-void
.end method


# virtual methods
.method public blacklist getAmplitude()F
    .locals 1

    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->amplitude:F

    return v0
.end method

.method public blacklist getDuration()I
    .locals 1

    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->duration:I

    return v0
.end method

.method public blacklist getFrequency()F
    .locals 1

    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->frequency:F

    return v0
.end method
