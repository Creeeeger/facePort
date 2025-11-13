.class public final Lcom/android/systemui/subscreen/SubScreenManager$5;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$5;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "SubScreenManager"

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$5;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFallback:Lcom/android/systemui/subscreen/SubScreenFallback;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_3

    const-string p1, "MSG_RESET_TOP_TASK_ID remove stack info  "

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz p1, :cond_3

    const-string p1, "MSG_TURN_OFF_SCREEN_WHEN_SMART_COVER   "

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    :cond_3
    :goto_0
    return-void
.end method
