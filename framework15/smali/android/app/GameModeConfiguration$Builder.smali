.class public final Landroid/app/GameModeConfiguration$Builder;
.super Ljava/lang/Object;
.source "GameModeConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GameModeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFpsOverride:I

.field private blacklist mScalingFactor:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/GameModeConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/GameModeConfiguration;->-$$Nest$fgetmFpsOverride(Landroid/app/GameModeConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    invoke-static {p1}, Landroid/app/GameModeConfiguration;->-$$Nest$fgetmScalingFactor(Landroid/app/GameModeConfiguration;)F

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/GameModeConfiguration;
    .locals 3

    new-instance v0, Landroid/app/GameModeConfiguration;

    iget v1, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    iget v2, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    invoke-direct {v0, v1, v2}, Landroid/app/GameModeConfiguration;-><init>(FI)V

    return-object v0
.end method

.method public whitelist setFpsOverride(I)Landroid/app/GameModeConfiguration$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "FPS override should be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    return-object p0
.end method

.method public whitelist setScalingFactor(F)Landroid/app/GameModeConfiguration$Builder;
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Scaling factor should fall between 0.1 and 1.0 (inclusive)"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    return-object p0
.end method
