.class Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$3;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

.field final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

.field final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Click position : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AspectRatioFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    iget-object p4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 578
    iget-object p4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p4, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 580
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 581
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 582
    iget-object p4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p4, 0x10acc

    .line 583
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const p5, 0x10acd

    .line 584
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    .line 583
    invoke-static {p4, p5, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 586
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 587
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 588
    iget-object p4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p4, p4, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p5, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mgetAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;I)F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Set AspectRatio => "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iget-object p5, p5, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p5, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mgetAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;I)F

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setFixedAspectRatioPackages(ILjava/util/Map;Z)V

    .line 591
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iget-object p2, p2, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2, p3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mgetPackagePolicy(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p3, p3, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:F

    .line 592
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 603
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
