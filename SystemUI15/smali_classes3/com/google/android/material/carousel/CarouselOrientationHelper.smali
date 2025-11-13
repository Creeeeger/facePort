.class public abstract Lcom/google/android/material/carousel/CarouselOrientationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final orientation:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract getParentBottom()I
.end method

.method public abstract getParentLeft()I
.end method

.method public abstract getParentRight()I
.end method

.method public abstract getParentStart()I
.end method

.method public abstract getParentTop()I
.end method
