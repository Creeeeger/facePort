.class public final Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BINDINGS:Ljava/util/List;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final selectionsManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;

    const-string v1, "bottom_start"

    const-string v2, "home"

    const-string v3, "lockscreen_show_controls"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;

    const-string/jumbo v2, "wallet"

    const-string v3, "lockscreen_show_wallet"

    const-string v4, "bottom_end"

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;

    const-string v3, "lock_screen_show_qr_code_scanner"

    const-string v5, "qr_code_scanner"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$Binding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->BINDINGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->selectionsManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;

    return-void
.end method

.method public static startSyncing$default(Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->BINDINGS:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$startSyncing$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer$startSyncing$1;-><init>(Ljava/util/List;Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x3

    invoke-static {p0, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
