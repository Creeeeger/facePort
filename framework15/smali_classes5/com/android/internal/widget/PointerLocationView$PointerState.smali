.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# static fields
.field private static final blacklist MAX_DRAW_COUNT:I = 0xc350

.field private static blacklist mMaxTraceCntByPointerCnt:I


# instance fields
.field private blacklist mAltXVelocity:F

.field private blacklist mAltYVelocity:F

.field private blacklist mBoundingBottom:F

.field private blacklist mBoundingLeft:F

.field private blacklist mBoundingRight:F

.field private blacklist mBoundingTop:F

.field private blacklist mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private greylist mCurDown:Z

.field private blacklist mHasBoundingBox:Z

.field private blacklist mToolType:I

.field private blacklist mTraceCount:I

.field private blacklist mTraceCurrent:[Z

.field private blacklist mTraceX:[F

.field private blacklist mTraceY:[F

.field private blacklist mXVelocity:F

.field private blacklist mYVelocity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceCount(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceCurrent(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0xc350

    sput v0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mMaxTraceCntByPointerCnt:I

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static blacklist setMaxTraceCnt(I)V
    .locals 1

    const v0, 0xc350

    div-int/2addr v0, p0

    sput v0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mMaxTraceCntByPointerCnt:I

    return-void
.end method


# virtual methods
.method public blacklist addTrace(FFZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    if-ne v1, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    new-array v2, v0, [F

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    new-array v3, v0, [Z

    iget-object v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p2, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput-boolean p3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    sget v2, Lcom/android/internal/widget/PointerLocationView$PointerState;->mMaxTraceCntByPointerCnt:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    const-string v1, "Pointer"

    const-string/jumbo v2, "point drawn is initialized because there is a risk of overflow due to too many draws."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public blacklist clearTrace()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return-void
.end method
