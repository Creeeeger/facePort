.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $sbnId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->$sbnId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->$sbnId:Ljava/lang/String;

    const-string v2, "Can\'t receive entryRemoved yet. force clear for sbnId:"

    const-string/jumbo v3, "{OngoingActivityCardStackView}"

    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->removeOngoingActivityByKey(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$sendDismiss$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningSwipeDismissTopCardMove:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    return-void
.end method
