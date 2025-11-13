.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/window/WindowContainerToken;


# direct methods
.method public synthetic constructor <init>(ILandroid/window/WindowContainerToken;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;->f$0:Landroid/window/WindowContainerToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;->f$0:Landroid/window/WindowContainerToken;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
