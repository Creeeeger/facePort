.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isSliderDisabled:Z

    return-void
.end method
