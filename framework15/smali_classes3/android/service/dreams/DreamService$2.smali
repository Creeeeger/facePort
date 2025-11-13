.class Landroid/service/dreams/DreamService$2;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$nzQBFl9MaG0AFcrDeJVEwGouvWE(Landroid/service/dreams/DreamService$2;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService$2;->lambda$onExitRequested$0()V

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

    iput-object p1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onExitRequested$0()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    return-void
.end method


# virtual methods
.method public blacklist onExitRequested()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onRedirectWake(Z)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method
