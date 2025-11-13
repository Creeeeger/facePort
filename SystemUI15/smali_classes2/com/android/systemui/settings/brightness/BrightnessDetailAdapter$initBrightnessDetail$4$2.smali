.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_run:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->$this_run:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->access$setBrightness(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;ZZ)V

    if-eqz p2, :cond_0

    const p1, 0x7f13132a

    goto :goto_0

    :cond_0
    const p1, 0x7f131329    # 1.95496E38f

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->$this_run:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$4$2;->$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
