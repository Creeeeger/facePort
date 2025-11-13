.class public final Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$1;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$1;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    sget-boolean p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->DEBUG_PROGRESS:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->finishAnimation$2()V

    return-void
.end method
