.class public final Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logAddRemoteInput(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logAddRemoteInput$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logAddRemoteInput$2;

    const-string v2, "RemoteInputControllerLog"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string p1, "RemoteInputView#focus"

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p4, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logRemoteInputApplySkipped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logRemoteInputApplySkipped$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logRemoteInputApplySkipped$2;

    const-string v2, "RemoteInputControllerLog"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logRemoveRemoteInput(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logRemoveRemoteInput$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger$logRemoveRemoteInput$2;

    const-string v2, "RemoteInputControllerLog"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p6, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p7, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p4, v1, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput-boolean p5, v1, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
