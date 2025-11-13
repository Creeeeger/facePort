.class public final Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/AppDataUsageCycleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getPreference$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    const-string p2, "preference"

    const/4 p4, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    const-string p5, "null cannot be cast to non-null type com.android.settings.datausage.CycleAdapter.CycleItem"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-boolean p5, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getOnDateSetByUser$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p3}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)I

    move-result p3

    const-string p5, "the mCycleSpinnerPosition:"

    invoke-static {p3, p5, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)I

    move-result p1

    iget-object p3, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p3}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getCycleAdapter$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p3

    const-string p5, "cycleAdapter"

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p3

    if-lt p1, p3, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getCycleAdapter$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p3}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$setMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;I)V

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getPreference$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    return-void

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_3
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_4
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p2, p3}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$setMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;I)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    iget-wide v1, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v3, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/AppDataUsageCycleController;->updateView(JJZ)V

    return-void

    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_6
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getUsageDetailsDataList$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getOnUsageDataUpdated$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
