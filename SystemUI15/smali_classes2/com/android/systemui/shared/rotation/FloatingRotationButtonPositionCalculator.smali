.class public final Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final defaultMargin:I

.field public final floatingRotationButtonPositionLeft:Z

.field public final taskbarMarginBottom:I

.field public final taskbarMarginLeft:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    iput p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    iput-boolean p4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    return-void
.end method


# virtual methods
.method public final calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sget-boolean p3, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz p3, :cond_2

    sget-object p1, Lcom/android/systemui/shared/rotation/RotationUtil;->Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/shared/rotation/RotationUtil;->floatingButtonPosition:I

    goto :goto_2

    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    const/16 v1, 0x53

    const/16 v2, 0x55

    const/16 v3, 0x35

    const/16 v4, 0x33

    const-string v5, "Invalid rotation "

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz p3, :cond_8

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v7, :cond_5

    if-ne p1, v6, :cond_4

    :cond_3
    move p1, v4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    goto :goto_2

    :cond_7
    :goto_1
    move p1, v1

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v7, :cond_3

    if-ne p1, v6, :cond_9

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    iget p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    if-eqz p2, :cond_a

    iget v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    goto :goto_3

    :cond_a
    move v0, p3

    :goto_3
    if-eqz p2, :cond_b

    iget p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    :cond_b
    and-int/lit8 p0, p1, 0x5

    const/4 p2, 0x5

    if-ne p0, p2, :cond_c

    neg-int v0, v0

    :cond_c
    and-int/lit8 p0, p1, 0x50

    const/16 p2, 0x50

    if-ne p0, p2, :cond_d

    neg-int p3, p3

    :cond_d
    new-instance p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;-><init>(III)V

    return-object p0
.end method
