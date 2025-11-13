.class final Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $userHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastSender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->$userHandle:Landroid/os/UserHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v0, v0, Lcom/android/systemui/broadcast/BroadcastSender;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->$intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;->$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
