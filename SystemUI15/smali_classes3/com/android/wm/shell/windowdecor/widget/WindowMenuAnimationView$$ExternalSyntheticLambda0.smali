.class public final synthetic Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    sget v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createLottieTask: onResult, asset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowMenuAnimationView"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    invoke-direct {v3, v0, p0, v2, p1}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;Lcom/airbnb/lottie/LottieTask;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
