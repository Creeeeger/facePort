.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput-boolean p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isFrontCameraUsing:Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;->f$1:Z

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    if-eqz p0, :cond_2

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations;->showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hideCameraProtection()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
