.class Landroid/service/translation/TranslationService$1;
.super Landroid/service/translation/ITranslationService$Stub;
.source "TranslationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/translation/TranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/translation/TranslationService;


# direct methods
.method public static synthetic blacklist $r8$lambda$8UosDEW_sa28nnm_RwALrVBG-hg(Landroid/service/translation/TranslationService;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnConnected(Landroid/service/translation/TranslationService;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EJZEBJnxB8aeKl8JO_nsb07rSDw(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnTranslationCapabilitiesRequest(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UXHyeP0gKuElO_PKbxAsGVWynp0(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->-$$Nest$mhandleOnCreateTranslationSession(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/translation/TranslationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-direct {p0}, Landroid/service/translation/ITranslationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, p1, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 3

    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v0}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/translation/TranslationService$1;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
