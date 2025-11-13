.class public final Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fcc710cb295e9e2L    # 0.2222

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130403

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130402

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f13040a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130407

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method public final getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 2

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fd6666666666666L    # 0.35

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final getLayout(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130409

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130406

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLayout(ZI)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;->getSpaceSidePadding(Landroid/graphics/Point;ZZ)I

    move-result p0

    return p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;ZZ)I
    .locals 0

    if-eqz p3, :cond_0

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide p2, 0x3fb3b645a1cac083L    # 0.077

    :goto_0
    mul-double/2addr p0, p2

    double-to-int p0, p0

    goto :goto_1

    :cond_0
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide/16 p2, 0x0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getSpaceWidth(Landroid/graphics/Point;ZZ)I
    .locals 0

    if-eqz p3, :cond_0

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide p2, 0x3fc1eb851eb851ecL    # 0.14

    :goto_0
    mul-double/2addr p0, p2

    double-to-int p0, p0

    goto :goto_1

    :cond_0
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide p2, 0x3fbc28f5c28f5c29L    # 0.11

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0d0337

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0335

    :goto_0
    return p0
.end method
