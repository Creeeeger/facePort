.class public final Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const/4 v0, 0x2

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->$r8$lambda$e4oUJST2vTEs4YgfrYpn5Rp3e_8(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->$r8$lambda$e4oUJST2vTEs4YgfrYpn5Rp3e_8(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z

    :cond_3
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->$r8$lambda$e4oUJST2vTEs4YgfrYpn5Rp3e_8(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
