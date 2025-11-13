.class public abstract Lcom/android/systemui/unfold/UnfoldTransitionModuleKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ENABLE_FOLD_TASK_ANIMATIONS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.unfold.enable_fold_tasks_animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/unfold/UnfoldTransitionModuleKt;->ENABLE_FOLD_TASK_ANIMATIONS:Z

    return-void
.end method
