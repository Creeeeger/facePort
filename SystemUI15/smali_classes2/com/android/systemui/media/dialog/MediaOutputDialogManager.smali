.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mediaOutputControllerFactory:Lcom/android/systemui/media/dialog/MediaOutputController$Factory;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/media/dialog/MediaOutputController$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->mediaOutputControllerFactory:Lcom/android/systemui/media/dialog/MediaOutputController$Factory;

    return-void
.end method

.method public static createAndShowWithController$default(Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;Landroid/media/session/MediaSession$Token;I)V
    .locals 7

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v6, p4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public final createAndShow(Ljava/lang/String;ZLandroid/view/View;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V
    .locals 7

    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    const/16 v2, 0x3a

    const-string v3, "media_output"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object p3

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method public final createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->mediaOutputControllerFactory:Lcom/android/systemui/media/dialog/MediaOutputController$Factory;

    invoke-interface {v0, p1, p5, p6}, Lcom/android/systemui/media/dialog/MediaOutputController$Factory;->create(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)Lcom/android/systemui/media/dialog/MediaOutputController;

    move-result-object v5

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object v1, p1

    move v3, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/internal/logging/UiEventLogger;Z)V

    if-eqz p3, :cond_0

    sget-object p2, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
