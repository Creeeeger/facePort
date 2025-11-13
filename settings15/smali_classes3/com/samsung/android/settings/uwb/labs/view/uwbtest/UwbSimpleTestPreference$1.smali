.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isRanging:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isRanging:Z

    invoke-static {p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->-$$Nest$mmotionStart(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    iget-boolean p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    invoke-static {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->start(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->stop()V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->motionStop()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isRanging:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    iput-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isRanging:Z

    invoke-static {p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->-$$Nest$mmotionStart(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    iget-boolean p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    invoke-static {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->start(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->stop()V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->motionStop()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
