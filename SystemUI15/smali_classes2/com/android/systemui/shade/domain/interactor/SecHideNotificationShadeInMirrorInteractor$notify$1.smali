.class public final Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-static {v0}, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->access$getSettingsHelper$p(Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->shouldHideNotificationShadeInMirror()Z

    move-result v0

    const-string v1, "notify(): "

    const-string v2, "SecHideNotificationShadeInMirrorInteractor"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor$notify$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v2

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->shouldHideNotificationShadeInMirror:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->shouldHideNotificationShadeInMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mShouldHideNotificationShadeInMirror:Z

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mShouldHideNotificationShadeInMirror:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :goto_0
    return-void
.end method
