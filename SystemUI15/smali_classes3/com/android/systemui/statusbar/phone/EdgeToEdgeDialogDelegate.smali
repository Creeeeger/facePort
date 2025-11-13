.class public final Lcom/android/systemui/statusbar/phone/EdgeToEdgeDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackAnimationSpec(Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;)Lcom/android/systemui/animation/back/BackAnimationSpec;
    .locals 1

    sget-object p0, Lcom/android/systemui/animation/back/BackAnimationSpec;->Companion:Lcom/android/systemui/animation/back/BackAnimationSpec$Companion;

    sget-object p0, Lcom/android/app/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/animation/back/BottomsheetBackAnimationSpecKt$createBottomsheetAnimationSpec$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public final bridge synthetic getHeight(Landroid/app/Dialog;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 p0, -0x1

    return p0
.end method

.method public final bridge synthetic getWidth(Landroid/app/Dialog;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 p0, -0x1

    return p0
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
