.class public final Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListHeaderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycles:Ljava/util/List;

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->updateSelectedCycle:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
