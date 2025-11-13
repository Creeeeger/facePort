.class public final Lcom/android/systemui/subscreen/SubScreenManager$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$8;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$8;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenComponentChecker;->isCellBroadCastAlertDialog(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    :cond_1
    return-void
.end method
