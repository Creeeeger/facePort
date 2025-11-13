.class public final synthetic Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/animation/Expandable;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;ZLcom/android/systemui/animation/Expandable;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/animation/Expandable;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$3:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$1:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    const/16 v3, 0x3a

    const-string/jumbo v4, "screen_record"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p0, v2}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    iget-object p0, v1, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyPermissionRequestDisplayed(I)V

    const/4 p0, 0x0

    return p0
.end method
