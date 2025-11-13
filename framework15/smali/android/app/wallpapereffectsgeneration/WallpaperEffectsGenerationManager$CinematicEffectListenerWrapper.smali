.class final Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;
.super Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;
.source "WallpaperEffectsGenerationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CinematicEffectListenerWrapper"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycLM0dd7mnKKBVoEDonQh3rkovM(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->lambda$onCinematicEffectGenerated$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onCinematicEffectGenerated$0(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;

    invoke-interface {v0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method


# virtual methods
.method public blacklist onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
