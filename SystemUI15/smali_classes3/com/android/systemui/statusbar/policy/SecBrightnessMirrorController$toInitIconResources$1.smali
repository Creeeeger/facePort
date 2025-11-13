.class public final Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_toInitIconResources:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->$this_toInitIconResources:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->this$0:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->$this_toInitIconResources:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;->this$0:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    return-void
.end method
