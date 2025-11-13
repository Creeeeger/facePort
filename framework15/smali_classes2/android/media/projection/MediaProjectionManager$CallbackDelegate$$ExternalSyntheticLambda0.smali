.class public final synthetic Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

.field public final synthetic blacklist f$1:Landroid/media/projection/MediaProjectionInfo;

.field public final synthetic blacklist f$2:Landroid/view/ContentRecordingSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/media/projection/MediaProjectionInfo;

    iput-object p3, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/view/ContentRecordingSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/media/projection/MediaProjectionInfo;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/view/ContentRecordingSession;

    invoke-static {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->$r8$lambda$jEKGcu_9Jof2HPVZjJ4OcY3nR3k(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method
