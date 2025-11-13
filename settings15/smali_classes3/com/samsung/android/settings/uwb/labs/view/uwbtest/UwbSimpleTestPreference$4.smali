.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mTextRangingData:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mStringRangingData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mTextGuideline:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-boolean v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewResponder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewInitiator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->motionStop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
