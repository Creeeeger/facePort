.class public final synthetic Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mDisplayId:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
