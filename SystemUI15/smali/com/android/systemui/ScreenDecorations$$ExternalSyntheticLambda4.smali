.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/ScreenDecorations;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeHwcOverlay()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeHwcOverlay()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v1, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ScreenDecorations;->showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hideCameraProtection()V

    :goto_2
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeHwcOverlay()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void

    :pswitch_4
    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->$r8$lambda$10EmIRqbpsgIdMPvv4IGdlXb-UQ(Lcom/android/systemui/ScreenDecorations;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
