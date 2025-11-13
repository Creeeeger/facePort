.class public final synthetic Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/CastTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$DialogHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/tiles/CastTile$DialogHolder;-><init>(I)V

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$DialogHolder;)V

    const/4 v5, 0x4

    const v6, 0x7f140606

    invoke-static {v3, v5, v4, v6, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/CastTile$DialogHolder;->mDialog:Landroid/app/Dialog;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/qs/tiles/CastTile$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/animation/Expandable;Landroid/app/Dialog;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
