.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
