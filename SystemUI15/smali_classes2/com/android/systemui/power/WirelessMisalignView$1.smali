.class public final Lcom/android/systemui/power/WirelessMisalignView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/WirelessMisalignView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/WirelessMisalignView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "PowerUI.WirelessMisalignView"

    const-string v0, "button click : misalign view gone"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    check-cast p0, Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PowerUI"

    const-string v0, "onWirelessMisalignCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    return-void
.end method
