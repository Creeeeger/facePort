.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->$expandable:Lcom/android/systemui/animation/Expandable;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->$expandable:Lcom/android/systemui/animation/Expandable;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    const/16 v2, 0x3a

    const-string v3, "active_background_apps"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-object v2, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method
