.class public final Lcom/android/systemui/doze/DozeBrightnessHostForwarder;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHost:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method


# virtual methods
.method public final setDozeScreenBrightness(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;

    const-string v3, "DozeLog"

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    return-void
.end method
