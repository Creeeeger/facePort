.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logBinderReceivedNetworkTypeIcon(Landroid/view/View;ILcom/android/systemui/common/shared/model/Icon$Resource;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2;

    const-string v2, "VerboseMobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    if-eqz p3, :cond_1

    iget p1, p3, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logBinderReceivedSignalIcon(Landroid/view/View;ILcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedSignalIcon$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedSignalIcon$2;

    const-string v2, "VerboseMobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {p3}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;->getLevel()I

    move-result p1

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    instance-of p1, p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget-boolean p1, p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->showExclamationMark:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logBinderReceivedVisibility(Landroid/view/View;IZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedVisibility$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger$logBinderReceivedVisibility$2;

    const-string v2, "VerboseMobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
