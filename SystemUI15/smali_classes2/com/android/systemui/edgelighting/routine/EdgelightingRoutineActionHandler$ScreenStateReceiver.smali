.class public final Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz p1, :cond_0

    const-string p1, "EdgelightingRoutineActionHandler"

    const-string p2, "onReceive"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->refreshBackground()V

    :cond_0
    return-void
.end method
