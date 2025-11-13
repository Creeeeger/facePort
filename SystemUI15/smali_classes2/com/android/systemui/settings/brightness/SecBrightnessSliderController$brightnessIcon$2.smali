.class final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$brightnessIcon$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$brightnessIcon$2;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$brightnessIcon$2;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const v1, 0x7f0a01cd

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-object v0
.end method
