.class Landroidx/apppickerview/widget/ListAdapter$2;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/ListAdapter;->onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/ListAdapter;

.field final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/ListAdapter;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 0

    .line 96
    iput-object p1, p0, Landroidx/apppickerview/widget/ListAdapter$2;->this$0:Landroidx/apppickerview/widget/ListAdapter;

    iput-object p2, p0, Landroidx/apppickerview/widget/ListAdapter$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Landroidx/apppickerview/widget/ListAdapter$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p0, p0, Landroidx/apppickerview/widget/ListAdapter$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
