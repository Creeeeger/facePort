.class public final Lcom/android/systemui/animation/FontVariationUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isUpdated:Z

.field public final mOpticalSize:I

.field public final mRoundness:I

.field public mWeight:I

.field public final mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    return-void
.end method
