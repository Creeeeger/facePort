.class public final Lcom/android/systemui/CameraProtectionLoaderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CameraProtectionLoader;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraProtectionLoaderImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final loadCameraProtectionInfo(IIII)Lcom/android/systemui/CameraProtectionInfo;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/CameraProtectionLoaderImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/CameraProtectionLoaderImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/CameraProtectionLoaderImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;)V

    new-instance v5, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-direct {v5, p2, p3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/systemui/CameraProtectionLoaderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance p0, Lcom/android/systemui/CameraProtectionInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/CameraProtectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid protection path"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final loadCameraProtectionInfoList()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f1303df

    const v2, 0x7f1303fb

    const v3, 0x7f1303f6

    const v4, 0x7f1303fa

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/systemui/CameraProtectionLoaderImpl;->loadCameraProtectionInfo(IIII)Lcom/android/systemui/CameraProtectionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x7f1303e1

    const v2, 0x7f1303f9

    const v3, 0x7f1303f7

    const v4, 0x7f1303f8

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/systemui/CameraProtectionLoaderImpl;->loadCameraProtectionInfo(IIII)Lcom/android/systemui/CameraProtectionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
