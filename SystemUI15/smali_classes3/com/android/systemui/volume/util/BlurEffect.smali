.class public final Lcom/android/systemui/volume/util/BlurEffect;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/BlurEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/BlurEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    check-cast p2, Lcom/android/systemui/volume/VolumeDependency;

    const-class p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    return-void
.end method

.method public static hideBlur(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public static setRealTimeBlur(Landroid/view/View;IFI)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method


# virtual methods
.method public final setCapturedBlur(Landroid/widget/ImageView;ILjava/util/function/Supplier;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, v0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v6, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/volume/util/BlurEffect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/volume/util/BlurEffect;->semWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v9, v4

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    const/4 v14, 0x1

    const/16 v18, 0x1

    const/16 v13, 0x7f4

    move-object v8, v15

    move/from16 v16, v2

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v18}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    const/4 v14, 0x1

    const/16 v18, 0x1

    const/16 v13, 0x7f4

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v15, v8

    move/from16 v16, v2

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v20}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_4
    :goto_2
    if-nez v9, :cond_5

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void

    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v0, v7}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method
