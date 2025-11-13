.class public final Lcom/android/systemui/keyguard/ui/composable/section/TopAreaSection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field public final clockSection:Lcom/android/systemui/keyguard/ui/composable/section/DefaultClockSection;

.field public final clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

.field public final mediaCarouselSection:Lcom/android/systemui/keyguard/ui/composable/section/MediaCarouselSection;

.field public final smartSpaceSection:Lcom/android/systemui/keyguard/ui/composable/section/SmartSpaceSection;

.field public final weatherClockSection:Lcom/android/systemui/keyguard/ui/composable/section/WeatherClockSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/composable/section/SmartSpaceSection;Lcom/android/systemui/keyguard/ui/composable/section/MediaCarouselSection;Lcom/android/systemui/keyguard/ui/composable/section/DefaultClockSection;Lcom/android/systemui/keyguard/ui/composable/section/WeatherClockSection;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
