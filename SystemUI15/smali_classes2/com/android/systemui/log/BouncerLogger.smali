.class public final Lcom/android/systemui/log/BouncerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/BouncerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final bouncerMessageUpdated(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/BouncerLogger$bouncerMessageUpdated$2;->INSTANCE:Lcom/android/systemui/log/BouncerLogger$bouncerMessageUpdated$2;

    iget-object p0, p0, Lcom/android/systemui/log/BouncerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BouncerLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->message:Lcom/android/systemui/bouncer/shared/model/Message;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move-object v4, v0

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput v2, v4, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->message:Lcom/android/systemui/bouncer/shared/model/Message;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/systemui/bouncer/shared/model/Message;->message:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    move-object v4, v0

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->secondaryMessage:Lcom/android/systemui/bouncer/shared/model/Message;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    iput v1, v4, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->secondaryMessage:Lcom/android/systemui/bouncer/shared/model/Message;

    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/android/systemui/bouncer/shared/model/Message;->message:Ljava/lang/String;

    :cond_3
    iput-object v3, v4, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final interestedStateChanged(Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/BouncerLogger$interestedStateChanged$2;->INSTANCE:Lcom/android/systemui/log/BouncerLogger$interestedStateChanged$2;

    const-string v2, "BouncerLog"

    iget-object p0, p0, Lcom/android/systemui/log/BouncerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
