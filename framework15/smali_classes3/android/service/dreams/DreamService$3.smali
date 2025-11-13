.class Landroid/service/dreams/DreamService$3;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mDreamStartOverlayConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$aWnQRS1r6epxQL-DFuLKoOxx_tg(Landroid/service/dreams/DreamService$3;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService$3;->lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 4

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mWindow is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v2}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v3}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/service/dreams/IDreamOverlayClient;->startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not send window attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$3;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->removeConsumer(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method
