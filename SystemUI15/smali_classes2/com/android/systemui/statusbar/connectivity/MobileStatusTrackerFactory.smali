.class public final Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final defaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field public final info:Landroid/telephony/SubscriptionInfo;

.field public final phone:Landroid/telephony/TelephonyManager;

.field public final receiverLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->phone:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->receiverLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->info:Landroid/telephony/SubscriptionInfo;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->defaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    return-void
.end method
