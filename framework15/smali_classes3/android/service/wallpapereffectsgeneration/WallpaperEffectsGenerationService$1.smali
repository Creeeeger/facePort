.class Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;
.super Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;
.source "WallpaperEffectsGenerationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;->this$0:Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;

    invoke-direct {p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
    .locals 3

    iget-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;->this$0:Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;

    invoke-static {v0}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->-$$Nest$fgetmHandler(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;->this$0:Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
