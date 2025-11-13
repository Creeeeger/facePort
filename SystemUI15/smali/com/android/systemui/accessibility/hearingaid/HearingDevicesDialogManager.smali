.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mDevicesChecker:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogFactory:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$Factory;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$Factory;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialogFactory:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$Factory;

    iput-object p3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDevicesChecker:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;

    iput-object p4, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final showDialog(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string v0, "HearingDevicesDialogManager"

    const-string v1, "HearingDevicesDialog already showing. Destroy it first."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    :cond_0
    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p1, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
