.class public Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;
.super Landroid/view/TextureView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;


# instance fields
.field public final mediaCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

.field public pendingPlayByViewState:Z

.field public videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    const/16 v10, 0x7e

    const/4 v11, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;-><init>(FLjava/lang/String;Landroid/graphics/Bitmap;ZZZLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->mediaCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static release$default(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final load(Landroid/content/res/AssetFileDescriptor;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    :cond_0
    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;

    invoke-direct {p1, p2, p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    const-string v0, "TransparentVideoView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const-string v1, "keeping previous surface texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load model "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    :cond_1
    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;

    invoke-direct {v0, v3, p0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/net/Uri;

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    :cond_3
    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;

    invoke-direct {v0, v3, p0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    const-string v0, "TransparentVideoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-boolean v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->release$default(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iget-boolean p1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoPauseResume:Z

    if-ne p1, v0, :cond_2

    const-string p1, "TransparentVideoView"

    if-eqz p2, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unhandled visibility update. pausing.. (visibility="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pause()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "paused by visibility change "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pause()V

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pendingPlayByViewState:Z

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pendingPlayByViewState:Z

    if-eqz p2, :cond_2

    const-string p2, "play by visibility change"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->play()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pendingPlayByViewState:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause isRunning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparentVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$pause$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$pause$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final play()V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play isRunning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparentVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->runAsync(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final runAsync(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->mediaCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$runAsync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$runAsync$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
