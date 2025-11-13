.class public final Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final logFrameIgnored(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logFrameIgnored$2;->INSTANCE:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logFrameIgnored$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logFrameProcessed(IILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logFrameProcessed$2;->INSTANCE:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logFrameProcessed$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, p1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-object p3, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateMessage(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2;->INSTANCE:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
