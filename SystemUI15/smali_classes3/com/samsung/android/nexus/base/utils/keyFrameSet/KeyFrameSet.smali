.class public abstract Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public fractionPositions:[F

.field public interpolator:Landroid/view/animation/Interpolator;

.field public interpolators:[Landroid/view/animation/Interpolator;

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    array-length p1, p1

    new-array p1, p1, [Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    array-length p0, p1

    invoke-static {p1, v3, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, p1, v4

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "positions are MUST Ascending"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_3

    array-length p1, p3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    array-length p1, p3

    new-array v0, p1, [Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    invoke-static {p3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interpolator length MUST be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "position length MUST be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
