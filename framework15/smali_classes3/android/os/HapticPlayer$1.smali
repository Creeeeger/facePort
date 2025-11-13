.class Landroid/os/HapticPlayer$1;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->start(IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;

.field final synthetic blacklist val$amplitude:I

.field final synthetic blacklist val$freq:I

.field final synthetic blacklist val$interval:I

.field final synthetic blacklist val$needParseEffect:Z


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iput-boolean p2, p0, Landroid/os/HapticPlayer$1;->val$needParseEffect:Z

    iput p3, p0, Landroid/os/HapticPlayer$1;->val$interval:I

    iput p4, p0, Landroid/os/HapticPlayer$1;->val$amplitude:I

    iput p5, p0, Landroid/os/HapticPlayer$1;->val$freq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 11

    iget-object v0, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-virtual {v0}, Landroid/os/HapticPlayer;->stop()V

    iget-object v0, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/os/HapticPlayer;->-$$Nest$fputmStepParameters(Landroid/os/HapticPlayer;Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Landroid/os/HapticPlayer$1;->val$needParseEffect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v0}, Landroid/os/HapticPlayer;->-$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iget-object v1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v1}, Landroid/os/HapticPlayer;->-$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/DynamicEffect;->getEffectInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/HapticPlayer;->-$$Nest$mparseRamp(Landroid/os/HapticPlayer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HapticPlayer$RampParameter;

    iget-object v3, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v3}, Landroid/os/HapticPlayer;->-$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v4, v2}, Landroid/os/HapticPlayer;->-$$Nest$mrampToStepParameter(Landroid/os/HapticPlayer;Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    const-string v1, "com.samsung.android.game.gametools"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ALLOWED_IN_BACKGROUND_PROCESS"

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    :cond_2
    iget-object v1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iget-object v2, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Landroid/os/HapticPlayer$1;->val$interval:I

    iget v4, p0, Landroid/os/HapticPlayer$1;->val$amplitude:I

    iget v5, p0, Landroid/os/HapticPlayer$1;->val$freq:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/HapticPlayer;->-$$Nest$mcreateStepEffect(Landroid/os/HapticPlayer;Ljava/util/List;III)Landroid/os/VibrationEffect;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicEffect_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v3}, Landroid/os/HapticPlayer;->-$$Nest$fgetmLoop(Landroid/os/HapticPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/os/HapticPlayer;->-$$Nest$sfgetmService()Landroid/os/IVibratorManagerService;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v8

    iget-object v5, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v5}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v10

    const/4 v5, 0x0

    move-object v9, v2

    invoke-interface/range {v3 .. v10}, Landroid/os/IVibratorManagerService;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "HapticPlayer"

    const-string v5, "Failed to start vibrate."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
