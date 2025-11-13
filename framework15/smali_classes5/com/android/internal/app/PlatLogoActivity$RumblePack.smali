.class Lcom/android/internal/app/PlatLogoActivity$RumblePack;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RumblePack"
.end annotation


# static fields
.field private static final blacklist INTERVAL:I = 0x32

.field private static final blacklist MSG:I = 0x1940


# instance fields
.field private blacklist mLastVibe:J

.field private blacklist mSpinPrimitiveSupported:Z

.field private final blacklist mVibeHandler:Landroid/os/Handler;

.field private final blacklist mVibeMan:Landroid/os/VibratorManager;

.field private final blacklist mVibeThread:Landroid/os/HandlerThread;

.field final synthetic blacklist this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrumble(Lcom/android/internal/app/PlatLogoActivity$RumblePack;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->rumble(F)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mLastVibe:J

    const-class v0, Landroid/os/VibratorManager;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/PlatLogoActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorManager;

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeMan:Landroid/os/VibratorManager;

    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeMan:Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    const/4 v0, 0x3

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mSpinPrimitiveSupported:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VibratorThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist rumble(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1940

    iput v1, v0, Landroid/os/Message;->what:I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mSpinPrimitiveSupported:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mLastVibe:J

    const-wide/16 v5, 0x32

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mLastVibe:J

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->mVibeMan:Landroid/os/VibratorManager;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {v2}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
