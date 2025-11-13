.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/HomeMobileIconViewModel;
.super Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;)V

    return-void
.end method
