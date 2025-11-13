.class final Landroid/media/projection/MediaProjection$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor blacklist <init>(Landroid/media/projection/MediaProjection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;)V

    return-void
.end method


# virtual methods
.method public blacklist onCapturedContentResize(II)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, Landroid/media/projection/MediaProjection;->-$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-virtual {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;->onCapturedContentResize(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onCapturedContentVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, Landroid/media/projection/MediaProjection;->-$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-virtual {v1, p1}, Landroid/media/projection/MediaProjection$CallbackRecord;->onCapturedContentVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o onStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch stop to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-static {v1}, Landroid/media/projection/MediaProjection;->-$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callbacks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProjection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, Landroid/media/projection/MediaProjection;->-$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
