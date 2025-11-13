.class public final Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListHeaderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    return-void
.end method


# virtual methods
.method public final getSelectedItem()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V
    .locals 1

    const-string v0, "cycleAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleListener:Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycles:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->updateSelectedCycle:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
