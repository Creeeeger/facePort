.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->-$$Nest$mgetDataUsageResult(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
