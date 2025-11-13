.class public Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->Companion:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final logAnimateInFailure()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logAnimateInFailure$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logAnimateInFailure$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logAnimateOutFailure()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logAnimateOutFailure$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logAnimateOutFailure$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logViewAdditionDelayed(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAdditionDelayed$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAdditionDelayed$2;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logViewExpiration(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewExpiration$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewExpiration$2;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovalIgnored$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovalIgnored$2;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logViewRemovedFromWindowManager(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/View;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemovedFromWindowManager$2;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->Companion:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean p3, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logViewUpdate(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewUpdate$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewUpdate$2;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
