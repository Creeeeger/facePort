.class public final Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final sysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->sysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    return-void
.end method
