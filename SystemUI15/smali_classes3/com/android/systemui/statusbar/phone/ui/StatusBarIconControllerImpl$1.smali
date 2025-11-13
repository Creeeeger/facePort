.class public final Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->EXTERNAL_SLOT_SUFFIX:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->updateSystemIconsAllowList()Z

    move-result p1

    const-string p2, "ACTION_CARRIER_CHANGED received. updateSystemIconsAllowList()?"

    const-string v0, " mSystemIconsAllowList:"

    invoke-static {p2, v0, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatusBarIconController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->refreshIconGroups()V

    :cond_0
    return-void
.end method
