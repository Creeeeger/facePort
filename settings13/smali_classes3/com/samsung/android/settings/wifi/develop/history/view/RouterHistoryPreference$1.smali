.class Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;
.super Ljava/lang/Object;
.source "RouterHistoryPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->setupSpinner(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

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

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->-$$Nest$fgetmHistoryLogDataAdapter(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->onChangeTargetSsid(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->-$$Nest$mupdateStatus(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->-$$Nest$mupdateLastConnectedTime(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->-$$Nest$mupdateSecurity(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V

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
