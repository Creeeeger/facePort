.class Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;
.super Ljava/lang/Object;
.source "TimeHistoryChartPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->setupSpinner(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->changeItem(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
