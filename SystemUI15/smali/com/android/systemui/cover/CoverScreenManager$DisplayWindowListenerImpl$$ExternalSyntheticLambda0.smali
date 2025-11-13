.class public final synthetic Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    iput p2, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    iget p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CoverScreenManager"

    const-string v2, "onDisplayRemoved : cover display removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    iget p0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    const-string p0, "CoverScreenManager"

    const-string v1, "onDisplayAdded : cover display added"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
