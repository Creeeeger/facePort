.class public final Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/common/buffer/RingBuffer;

    const/16 v1, 0x14

    sget-object v2, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$buffer$1;->INSTANCE:Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$buffer$1;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    return-void
.end method
