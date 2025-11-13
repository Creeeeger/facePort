.class Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

.field final synthetic val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

.field final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$2;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Click position : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraCutoutFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p2, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 401
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iput p1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    const/4 p2, 0x2

    iput p2, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    goto :goto_0

    .line 405
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    const/4 p2, 0x0

    iput p2, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    .line 407
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p2, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmUserInfo(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/pm/SemUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$msetCutoutPolicy(Lcom/samsung/android/settings/display/CameraCutoutFragment;Ljava/lang/String;II)V

    return-void
.end method
