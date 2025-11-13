.class public abstract Landroidx/core/animation/Keyframe;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mFraction:F

.field public mHasValue:Z

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mValueWasSetOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public abstract clone()Landroidx/core/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->clone()Landroidx/core/animation/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
