.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateDataText()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    return-void
.end method
