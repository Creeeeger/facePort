.class public final Lcom/android/systemui/SysUICutoutProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cameraProtectionList$delegate:Lkotlin/Lazy;

.field public final cameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/CameraProtectionLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SysUICutoutProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/SysUICutoutProvider;->cameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

    new-instance p1, Lcom/android/systemui/SysUICutoutProvider$cameraProtectionList$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/SysUICutoutProvider$cameraProtectionList$2;-><init>(Lcom/android/systemui/SysUICutoutProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SysUICutoutProvider;->cameraProtectionList$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final cutoutInfoForCurrentDisplayAndRotation()Lcom/android/systemui/SysUICutoutInformation;
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/SysUICutoutProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lcom/android/systemui/SysUICutoutInformation;

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SysUICutoutProvider;->cameraProtectionList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/CameraProtectionInfo;

    iget-object v6, v6, Lcom/android/systemui/CameraProtectionInfo;->displayUniqueId:Ljava/lang/String;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_3
    move-object v5, v2

    :goto_0
    check-cast v5, Lcom/android/systemui/CameraProtectionInfo;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v5, Lcom/android/systemui/CameraProtectionInfo;->bounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v12, p0, v2, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    iget-object v11, v5, Lcom/android/systemui/CameraProtectionInfo;->cutoutProtectionPath:Landroid/graphics/Path;

    new-instance v2, Lcom/android/systemui/CameraProtectionInfo;

    iget-object v13, v5, Lcom/android/systemui/CameraProtectionInfo;->displayUniqueId:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/systemui/CameraProtectionInfo;->logicalCameraId:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/systemui/CameraProtectionInfo;->physicalCameraId:Ljava/lang/String;

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/CameraProtectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/SysUICutoutInformation;-><init>(Landroid/view/DisplayCutout;Lcom/android/systemui/CameraProtectionInfo;)V

    return-object v3
.end method
