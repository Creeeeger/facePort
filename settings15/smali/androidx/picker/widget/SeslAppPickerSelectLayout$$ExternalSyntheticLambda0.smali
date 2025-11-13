.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V
    .locals 0

    iput p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    packed-switch v1, :pswitch_data_0

    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateHeaderVisibility()V

    return-void

    :pswitch_0
    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateHeaderVisibility()V

    return-void

    :pswitch_1
    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateHeaderVisibility()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void

    :pswitch_3
    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateLayout$3()V

    return-void

    :pswitch_4
    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateHeaderVisibility()V

    return-void

    :pswitch_5
    sget v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->refreshSelectedAppPickerView(Z)V

    return-void

    :pswitch_6
    sget v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->refreshSelectedAppPickerView(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
