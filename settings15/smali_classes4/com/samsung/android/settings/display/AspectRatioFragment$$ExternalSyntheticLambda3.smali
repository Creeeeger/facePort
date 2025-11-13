.class public final synthetic Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$5;

    invoke-direct {v1, v0, p0}, Landroidx/apppickerview/widget/AppPickerView$5;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
