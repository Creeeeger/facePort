.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$3;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$3;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    if-eq v2, v0, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "updateHighBrightnessModeEnter : "

    const-string p1, ", slider is "

    invoke-static {p0, p1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v2, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SubscreenBrightnessController"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    if-eqz p0, :cond_3

    iput-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeEnter:Z

    goto :goto_1

    :cond_2
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {v3, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->-$$Nest$mupdateSlider(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    return-void

    :goto_2
    sput-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    throw p0
.end method
