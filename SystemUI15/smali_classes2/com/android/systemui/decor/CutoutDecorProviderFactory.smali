.class public final Lcom/android/systemui/decor/CutoutDecorProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cameraProtectionStrokeWidth:I

.field public final display:Landroid/view/Display;

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public isCameraProtectionEnabled:Z

.field public isCameraProtectionVisible:Z

.field public final res:Landroid/content/res/Resources;

.field public shouldFillUDCDisplayCutout:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->res:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->display:Landroid/view/Display;

    new-instance p2, Landroid/view/DisplayInfo;

    invoke-direct {p2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    const p2, 0x7f050014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    const p2, 0x7f0701a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->cameraProtectionStrokeWidth:I

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->display:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    :cond_0
    const-string v0, "CutoutDecorProviderFactory"

    const-string v1, "display is null, can\'t update displayInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getHasProviders()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactoryKt;->getBoundBaseOnCurrentRotation(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/systemui/decor/CutoutDecorProviderImpl;

    iget-object v4, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v2, v4}, Lcom/android/systemui/decor/FaceScanningProviderFactoryKt;->baseOnRotation0(II)I

    move-result v2

    iget-boolean v4, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    iget v5, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->cameraProtectionStrokeWidth:I

    invoke-direct {v3, v2, v4, v5}, Lcom/android/systemui/decor/CutoutDecorProviderImpl;-><init>(IZI)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/decor/CutoutDecorProviderImpl;

    iget-boolean v2, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->cameraProtectionStrokeWidth:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Lcom/android/systemui/decor/CutoutDecorProviderImpl;-><init>(IZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
