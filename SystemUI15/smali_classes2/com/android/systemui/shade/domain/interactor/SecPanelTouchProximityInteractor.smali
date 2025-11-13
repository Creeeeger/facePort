.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;

.field public final context:Landroid/content/Context;

.field public postAnimateForceCollapseShadeRunnable:Ljava/lang/Runnable;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;->broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor$broadcastReceiver$1;

    return-void
.end method
