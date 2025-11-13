.class final Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
.super Landroid/hardware/input/KeyboardBacklightState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalKeyboardBacklightState"
.end annotation


# instance fields
.field private final blacklist mBrightnessLevel:I

.field private final blacklist mMaxBrightnessLevel:I


# direct methods
.method constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/input/KeyboardBacklightState;-><init>()V

    iput p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mBrightnessLevel:I

    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mMaxBrightnessLevel:I

    return-void
.end method


# virtual methods
.method public blacklist getBrightnessLevel()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mBrightnessLevel:I

    return v0
.end method

.method public blacklist getMaxBrightnessLevel()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mMaxBrightnessLevel:I

    return v0
.end method
