.class public final Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentAlign:I

.field public mCurrentNavigationMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    return-void
.end method


# virtual methods
.method public final getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-nez p0, :cond_1

    int-to-double p0, p2

    const-wide v0, 0x3f8a9fbe76c8b439L    # 0.013

    :goto_1
    mul-double/2addr p0, v0

    double-to-int p0, p0

    goto :goto_2

    :cond_1
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fb851eb851eb852L    # 0.095

    goto :goto_1

    :goto_2
    return p0
.end method

.method public final getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-nez v0, :cond_2

    int-to-double p1, p2

    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-wide v0, 0x3fca7ef9db22d0e5L    # 0.207

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    goto :goto_2

    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr p0, v0

    double-to-int p0, p0

    :goto_2
    return p0
.end method

.method public final getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const p1, 0x7f130405

    goto :goto_0

    :cond_0
    const p1, 0x7f130404

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const p1, 0x7f13040a

    goto :goto_1

    :cond_2
    const p1, 0x7f130407

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

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

    const-wide v0, 0x3fd3333333333333L    # 0.3

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final getLayout(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f1303f3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f1303f4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLayout(ZI)Ljava/lang/String;
    .locals 1

    iput p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f1303f2

    goto :goto_0

    :cond_1
    const p1, 0x7f1303ed

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const p1, 0x7f1303f1

    goto :goto_1

    :cond_3
    const p1, 0x7f1303ec

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 3

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    const-wide v1, 0x3fa10624dd2f1aa0L    # 0.03325

    if-nez v0, :cond_2

    int-to-double p1, p2

    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    mul-double/2addr p1, v1

    double-to-int p0, p1

    goto :goto_2

    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    :goto_2
    return p0
.end method

.method public final getSpaceWidth(Landroid/graphics/Point;ZZ)I
    .locals 2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    const-wide v0, 0x3fbc28f5c28f5c29L    # 0.11

    if-nez p2, :cond_2

    int-to-double p1, p1

    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fb3333333333333L    # 0.075

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    goto :goto_2

    :cond_2
    int-to-double p0, p1

    mul-double/2addr p0, v0

    double-to-int p0, p0

    :goto_2
    return p0
.end method

.method public final getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0d0336

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0335

    :goto_0
    return p0
.end method
