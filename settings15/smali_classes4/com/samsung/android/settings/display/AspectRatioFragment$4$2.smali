.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

.field public final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

.field public final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    const-string p1, "Click position : "

    const-string p2, "AspectRatioFragment"

    invoke-static {p3, p1, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 p4, 0x1

    iput-boolean p4, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSpinnerItemClicked:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/CharSequence;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p5, p3}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p5, 0x10acc

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const v0, 0x10acd

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p5, v0, p3, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p5, Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p4, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p4, 0x3

    if-ne p1, p4, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    if-ne p1, p5, :cond_2

    move p1, p4

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    :goto_0
    iput p1, p3, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p3, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object p4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/content/pm/SemUserInfo;->id:I

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p1

    :goto_1
    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    invoke-interface {p3, p4, p1, p5}, Landroid/app/IActivityTaskManager;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Failed to set user min aspect ratio"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Set AspectRatio => "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p3, p3, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    invoke-static {p1, p0, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
