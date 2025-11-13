.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/SubScreenQsMobileIconViewModel;
.super Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->SUB_SCREEN_QUICK_PANEL:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;)V

    return-void
.end method
