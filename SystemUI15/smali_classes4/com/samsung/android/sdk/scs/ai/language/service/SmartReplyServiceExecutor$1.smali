.class public final Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "SmartReplyServiceExecutor"

    const-string v1, "binderDied deathRecipient callback"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
