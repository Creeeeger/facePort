.class public final Lcom/android/systemui/ScreenDecorations$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/DisplayTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 14

    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, v7, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object p1, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, p1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    :cond_1
    iget v0, v7, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v8, :cond_2

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/android/systemui/ScreenDecorations;->displaySizeChanged(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iput-boolean v9, v7, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    iget v0, v7, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v1, v7, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    if-eq v0, v8, :cond_3

    invoke-virtual {v1, v0, v8}, Lcom/android/systemui/log/ScreenDecorationsLogger;->logRotationChangeDeferred(II)V

    :cond_3
    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/log/ScreenDecorationsLogger;->logDisplaySizeChanged(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_4
    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v0, :cond_6

    move v11, v10

    :goto_0
    const/4 v0, 0x4

    if-ge v11, v0, :cond_6

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v0, v0, v11

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v6, 0x0

    move-object v0, v13

    move v3, v11

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/graphics/Point;I)V

    invoke-virtual {v12, v13}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v11, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v2, v7, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, v7

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/graphics/Point;I)V

    invoke-virtual {p0, v11}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_7
    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz p0, :cond_8

    iput-boolean v9, p0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    :cond_8
    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p1, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iput-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    iget-object p1, v7, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p1

    iget-object v0, v7, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    move v9, v10

    :goto_1
    invoke-virtual {v7, v9}, Lcom/android/systemui/ScreenDecorations;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/systemui/ScreenDecorations;->hasSameProviders(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-nez p1, :cond_a

    if-nez p0, :cond_c

    goto :goto_2

    :cond_a
    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    iget v0, p1, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    iget v1, p0, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    if-ne v0, v1, :cond_c

    iget v0, p1, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    iget p0, p0, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    if-ne v0, p0, :cond_c

    :goto_2
    iget-boolean p0, v7, Lcom/android/systemui/ScreenDecorations;->mPendingManualConfigUpdate:Z

    if-eqz p0, :cond_d

    iput-boolean v10, v7, Lcom/android/systemui/ScreenDecorations;->mPendingManualConfigUpdate:Z

    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/systemui/ScreenDecorations;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_4

    :cond_c
    :goto_3
    iput-object p1, v7, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    invoke-virtual {v7}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {v7}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    return-void

    :cond_d
    :goto_4
    iget-object p0, v7, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result p0

    iget-boolean p1, v7, Lcom/android/systemui/ScreenDecorations;->mIsSmartViewFitToActiveDisplay:Z

    if-eq p1, p0, :cond_e

    iput-boolean p0, v7, Lcom/android/systemui/ScreenDecorations;->mIsSmartViewFitToActiveDisplay:Z

    invoke-virtual {v7}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {v7}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    :cond_e
    return-void
.end method
