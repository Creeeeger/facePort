.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;
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

    iput p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setItemAnimator ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsMainViewTitleCustomized:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
