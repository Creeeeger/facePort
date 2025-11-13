.class public final Lcom/android/wm/shell/back/ShellBackAnimationRegistry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimationDefinition:Landroid/util/SparseArray;

.field public final mCrossTaskAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

.field public final mCustomizeActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

.field public final mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/ShellBackAnimation;Lcom/android/wm/shell/back/ShellBackAnimation;Lcom/android/wm/shell/back/ShellBackAnimation;Lcom/android/wm/shell/back/ShellBackAnimation;Lcom/android/wm/shell/back/ShellBackAnimation;Lcom/android/wm/shell/back/ShellBackAnimation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM:Z

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    move-object p1, p6

    move-object p2, p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p6, 0x2

    invoke-virtual {p1}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object v1

    invoke-virtual {v0, p6, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p6, 0x3

    invoke-virtual {p2}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object v1

    invoke-virtual {v0, p6, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    const/4 p6, 0x0

    invoke-virtual {p3}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object p3

    invoke-virtual {v0, p6, p3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_3
    if-eqz p5, :cond_4

    const/4 p3, 0x1

    invoke-virtual {p5}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_4
    iput-object p1, p0, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    iput-object p4, p0, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    iput-object p2, p0, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mCrossTaskAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    return-void
.end method
