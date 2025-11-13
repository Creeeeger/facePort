.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;
    .locals 6

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d03bd

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    new-instance v4, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-direct {v4, p1, p2}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;)V

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v5, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object p1
.end method
