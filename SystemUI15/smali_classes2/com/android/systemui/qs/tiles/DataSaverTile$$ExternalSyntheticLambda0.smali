.class public final synthetic Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DataSaverTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v1

    const v2, 0x104040c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    const v2, 0x1040408

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    new-instance v2, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    const v3, 0x104040b

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    if-eqz p0, :cond_1

    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    const/16 v3, 0x3a

    const-string/jumbo v4, "start_data_saver"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
