.class public Lcom/android/systemui/animation/TransitionAnimator$State;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bottom:I

.field public bottomCornerRadius:F

.field public left:I

.field public right:I

.field public top:I

.field public topCornerRadius:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iput p2, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iput p3, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iput p4, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iput p5, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iput p6, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    sub-int/2addr v0, p0

    return v0
.end method
