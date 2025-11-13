.class public interface abstract Lcom/android/systemui/statusbar/phone/DialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public beforeCreate(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public getBackAnimationSpec(Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;)Lcom/android/systemui/animation/back/BackAnimationSpec;
    .locals 8

    sget-object p0, Lcom/android/systemui/animation/back/BackAnimationSpec;->Companion:Lcom/android/systemui/animation/back/BackAnimationSpec$Companion;

    sget-object v7, Lcom/android/app/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;

    const v4, 0x3f666666    # 0.9f

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41000000    # 8.0f

    move-object v0, p0

    move-object v1, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;-><init>(Lkotlin/jvm/functions/Function0;FFFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public getHeight(Landroid/app/Dialog;)I
    .locals 0

    sget p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->$r8$clinit:I

    const/4 p0, -0x2

    return p0
.end method

.method public getWidth(Landroid/app/Dialog;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getDefaultDialogWidth(Landroid/app/Dialog;)I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/app/Dialog;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Dialog;Z)V
    .locals 0

    return-void
.end method
