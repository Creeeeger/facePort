.class Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseErrorListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;)V
    .locals 0

    .line 732
    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$BaseErrorListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;-><init>(Landroid/media/audiofx/SemSoundAlive;)V

    return-void
.end method


# virtual methods
.method public blacklist onError()V
    .locals 3

    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, "l":Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmErrorListenerLock(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmErrorListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmErrorListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    move-result-object v2

    move-object v0, v2

    .line 743
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    if-eqz v0, :cond_1

    .line 745
    invoke-interface {v0}, Landroid/media/audiofx/SemSoundAlive$OnErrorListener;->onError()V

    .line 747
    :cond_1
    return-void

    .line 743
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
