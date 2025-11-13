.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->autoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    xor-int/lit8 p1, v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->access$setBrightness(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;ZZ)V

    return-void
.end method
