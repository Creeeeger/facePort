.class public final Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->Companion:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logBroadcastDispatched(ILjava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 4

    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logBroadcastReceived(IILandroid/content/Intent;)V
    .locals 4

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, p1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-object p3, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logClearedAfterRemoval$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logClearedAfterRemoval$2;

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logContextReceiverRegistered(IILandroid/content/IntentFilter;)V
    .locals 6

    invoke-virtual {p3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, ","

    const-string v2, "Actions("

    const-string v3, ")"

    const/16 v4, 0x38

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/sequences/SequencesKt___SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    const-string v5, ""

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object p3

    const-string v2, "Categories("

    invoke-static {p3, v1, v2, v3, v4}, Lkotlin/sequences/SequencesKt___SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v5

    :goto_0
    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "BroadcastDispatcherLog"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\n"

    invoke-static {v0, p1, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->Companion:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;->flagToString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logContextReceiverUnregistered(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logReceiverRegistered(ILandroid/content/BroadcastReceiver;I)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->Companion:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;->flagToString(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTagForRemoval(Landroid/content/BroadcastReceiver;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logTagForRemoval$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logTagForRemoval$2;

    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BroadcastDispatcherLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
