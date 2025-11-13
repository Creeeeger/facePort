.class public final Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->-$$Nest$msetBrightness(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v0, 0x7f13132a

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v0, 0x7f131329    # 1.95496E38f

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f131046

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
