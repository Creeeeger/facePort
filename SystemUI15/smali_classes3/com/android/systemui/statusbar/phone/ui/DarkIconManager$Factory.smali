.class public final Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

.field public final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

.field public final mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

.field public final mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    return-void
.end method
