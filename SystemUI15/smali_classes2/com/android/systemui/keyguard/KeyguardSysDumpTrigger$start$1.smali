.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $reason:I

.field public final synthetic $timestamp:J

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->sendIntent(IJ)V

    return-void
.end method
