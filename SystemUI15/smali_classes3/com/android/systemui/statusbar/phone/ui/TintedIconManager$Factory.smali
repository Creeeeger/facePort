.class public final Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

.field public final mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

.field public final mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

.field public final mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;
    .locals 8

    new-instance v7, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V

    return-object v7
.end method
