.class public final Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    const/4 v0, 0x2

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->updateButtonStatus(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->access$callModeSelectListener(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->updateButtonStatus(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->access$callModeSelectListener(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    const-string v1, "checkBox"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->checkBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->updateButtonStatus(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode$onBind$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundMode;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->selectedPosition:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecSoundMode;->access$callModeSelectListener(Lcom/samsung/android/settings/asbase/widget/SecSoundMode;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
