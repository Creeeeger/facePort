.class public final Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    xor-int/lit8 p1, p2, 0x1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->-$$Nest$msetBrightness(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const-string v0, "QPDS2027"

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
