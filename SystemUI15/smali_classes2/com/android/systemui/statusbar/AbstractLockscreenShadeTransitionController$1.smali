.class public final Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController$1;->this$0:Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController$1;->this$0:Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->updateResources$1()V

    return-void
.end method
