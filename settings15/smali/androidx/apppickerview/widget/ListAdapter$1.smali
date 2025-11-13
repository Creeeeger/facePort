.class public final Landroidx/apppickerview/widget/ListAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
    .locals 0

    iput p2, p0, Landroidx/apppickerview/widget/ListAdapter$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/apppickerview/widget/ListAdapter$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Landroidx/apppickerview/widget/ListAdapter$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/apppickerview/widget/ListAdapter$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/apppickerview/widget/ListAdapter$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/apppickerview/widget/ListAdapter$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
