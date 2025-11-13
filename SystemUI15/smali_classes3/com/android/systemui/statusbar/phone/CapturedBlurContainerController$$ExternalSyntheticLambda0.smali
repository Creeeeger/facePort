.class public final synthetic Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p5, p9, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p2, p2, 0x5

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget p2, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 p2, p2, 0x5

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
