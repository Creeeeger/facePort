.class public final Lcom/android/systemui/statusbar/phone/LightBarController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mNavModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

.field public final mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mNavModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    return-void
.end method
