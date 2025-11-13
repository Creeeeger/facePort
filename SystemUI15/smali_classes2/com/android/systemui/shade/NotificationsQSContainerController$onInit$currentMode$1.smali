.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
