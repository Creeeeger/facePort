.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $currentUser:I

.field public final synthetic $reason:I

.field public final synthetic $timestamp:J

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$currentUser:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$reason:I

    iput-wide p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$currentUser:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$reason:I

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;->$timestamp:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$sendBroadcastToIssueTracker(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "Unable to report issue currentUser="

    const-string v1, "KeyguardSysDumpTrigger"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
