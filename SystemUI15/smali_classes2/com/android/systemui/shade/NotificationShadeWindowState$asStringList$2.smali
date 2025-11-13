.class final Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->glanceableHubShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v25

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v27

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v30

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-wide v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
