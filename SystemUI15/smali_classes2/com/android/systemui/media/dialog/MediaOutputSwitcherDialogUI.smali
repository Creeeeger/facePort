.class public final Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    return-void
.end method


# virtual methods
.method public final showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_0
    const-string p0, "MediaOutputSwitcherDialogUI"

    const-string p1, "Unable to launch media output dialog. Package name is empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputSwitcherDialogUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
