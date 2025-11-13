.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSALogging "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x67

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    const-string v0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "7"

    goto :goto_0

    :cond_1
    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v0, "4"

    goto :goto_0

    :cond_3
    const-string v0, "6"

    goto :goto_0

    :cond_4
    const-string v0, "3"

    goto :goto_0

    :cond_5
    const-string v0, "1"

    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    const-string v2, "LSE1062"

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result p0

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p0, :cond_6

    const-string p0, "101_S"

    goto :goto_1

    :cond_6
    const-string p0, "500"

    const-string v2, "5001"

    goto :goto_1

    :cond_7
    const-string p0, "101"

    :goto_1
    invoke-static {p0, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
