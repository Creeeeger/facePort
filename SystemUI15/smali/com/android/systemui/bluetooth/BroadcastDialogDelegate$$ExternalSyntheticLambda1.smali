.class public final synthetic Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p1, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p1, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
