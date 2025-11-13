.class public final Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceProviderClientFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceProviderClientFactory;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceProviderClientFactoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceProviderClientFactoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method
