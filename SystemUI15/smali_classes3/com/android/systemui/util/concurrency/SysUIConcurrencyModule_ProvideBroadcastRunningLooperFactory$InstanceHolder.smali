.class final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBroadcastRunningLooperFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
