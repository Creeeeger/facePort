.class public final synthetic Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 7

    move-object v5, p1

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    sget p1, Lcom/android/wm/shell/common/split/DividerPanelView;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "createLottieTask: onResult, asset="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerPanelView"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda3;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;Lcom/airbnb/lottie/LottieTask;Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
