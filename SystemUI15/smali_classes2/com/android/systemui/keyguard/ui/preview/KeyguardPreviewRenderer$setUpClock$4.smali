.class public final Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $receiver:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;->$receiver:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;->$receiver:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
