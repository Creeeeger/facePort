.class final Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;
.super Landroid/hardware/BatteryState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalBatteryState"
.end annotation


# instance fields
.field private final blacklist mCapacity:F

.field private final blacklist mIsPresent:Z

.field private final blacklist mStatus:I


# direct methods
.method constructor blacklist <init>()V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V

    return-void
.end method

.method constructor blacklist <init>(ZIF)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/BatteryState;-><init>()V

    iput-boolean p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mIsPresent:Z

    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mStatus:I

    iput p3, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mCapacity:F

    return-void
.end method


# virtual methods
.method public whitelist getCapacity()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mCapacity:F

    return v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mStatus:I

    return v0
.end method

.method public whitelist isPresent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mIsPresent:Z

    return v0
.end method
