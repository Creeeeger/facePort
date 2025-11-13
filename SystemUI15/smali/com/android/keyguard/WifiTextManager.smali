.class public final Lcom/android/keyguard/WifiTextManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public connected:Z

.field public final context:Landroid/content/Context;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public ssid:Ljava/lang/String;

.field public final wifiInteractor:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/WifiTextManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/WifiTextManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/keyguard/WifiTextManager;->wifiInteractor:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;

    return-void
.end method
