.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    const-string v0, "DataUsageLabelView"

    if-eqz p2, :cond_0

    const-string v1, "onReceive: "

    const-string v2, " DataUsage String: "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->access$000(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateUsageInfo()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    if-eq v1, v2, :cond_4

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfLayout()V

    :cond_4
    if-eqz p2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_SIM_STATE_CHANGED: visibility="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " rewrite String to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateUsageInfo()V

    :cond_7
    :goto_2
    return-void
.end method
