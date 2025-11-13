.class public final synthetic Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/ShutdownUi;

.field public final synthetic f$1:Lcom/android/systemui/scrim/ScrimDrawable;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/ShutdownUi;Lcom/android/systemui/scrim/ScrimDrawable;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/ShutdownUi;

    iput-object p2, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/scrim/ScrimDrawable;

    iput-object p3, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/ShutdownUi;

    iget-object v0, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/scrim/ScrimDrawable;

    iget-object p0, p0, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    iget-object v1, p1, Lcom/android/systemui/globalactions/ShutdownUi;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0xff

    invoke-virtual {v0, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    const p1, 0x7f0713d1

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {p0, p1, v1}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/scrim/ScrimDrawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method
