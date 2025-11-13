.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scaleCallChip(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->scaleCallChip(Landroid/view/View;FZ)V

    :cond_0
    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$configurationListener$1;->onDensityOrFontScaleChanged()V

    return-void
.end method
