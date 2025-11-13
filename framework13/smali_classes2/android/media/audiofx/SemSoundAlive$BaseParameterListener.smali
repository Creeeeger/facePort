.class Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;)V
    .locals 0

    .line 662
    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$BaseParameterListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SemSoundAlive;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 10
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "l":Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 673
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    if-eqz v0, :cond_4

    .line 675
    const/4 v1, -0x1

    .line 676
    .local v1, "p1":I
    const/4 v2, -0x1

    .line 677
    .local v2, "p2":I
    const/4 v3, -0x1

    .line 679
    .local v3, "v":I
    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v4, v6, :cond_1

    .line 680
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 681
    array-length v4, p3

    const/16 v7, 0x8

    if-lt v4, v7, :cond_1

    .line 682
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 685
    :cond_1
    array-length v4, p4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 686
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    move v9, v3

    goto :goto_0

    .line 687
    :cond_2
    array-length v4, p4

    if-ne v4, v6, :cond_3

    .line 688
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    move v9, v3

    goto :goto_0

    .line 687
    :cond_3
    move v9, v3

    .line 691
    .end local v3    # "v":I
    .local v9, "v":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    if-eq v9, v3, :cond_4

    .line 692
    iget-object v4, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    move-object v3, v0

    move v5, p2

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-interface/range {v3 .. v8}, Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/SemSoundAlive;IIII)V

    .line 695
    .end local v1    # "p1":I
    .end local v2    # "p2":I
    .end local v9    # "v":I
    :cond_4
    return-void

    .line 673
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
