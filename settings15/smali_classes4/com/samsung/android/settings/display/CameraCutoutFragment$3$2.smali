.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

.field public final synthetic val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

.field public final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$1;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p1, "Click position : "

    const-string p2, "CameraCutoutFragment"

    invoke-static {p3, p1, p2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iput p1, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    const/4 p3, 0x2

    iput p3, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    const/4 p3, 0x0

    iput p3, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p3, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p4, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {p4}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "setCameraCutoutPackage : "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " / "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " for user: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1, p4, p3, p0}, Landroid/app/IActivityTaskManager;->setCutoutPolicy(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "setCameraCutoutPackage() RemoteException"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
