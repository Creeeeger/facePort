.class public final Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    iget-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLastConnectedSsid:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Connected"

    goto :goto_0

    :cond_0
    const-string p3, "Disconnected"

    :goto_0
    const-string p4, "Status: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->status:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    invoke-static {p4, p3}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Last connected time: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->time:Ljava/time/LocalDateTime;

    const-string/jumbo p5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->lastConnectedTime:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean p3, p2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    const-string p4, ""

    if-eqz p3, :cond_4

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    sget-object p3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTING:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    iget-object p5, p2, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {p3, p5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;->parseConnectingLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;

    move-result-object p1

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->pairwiseCipher:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->groupCipher:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->akmSuite:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->convertAkmSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p4

    move-object p2, p1

    move-object p3, p2

    :goto_1
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p4, "pairwise cipher: "

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityPairwise:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "group cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityGroup:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "akm suite: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityAkm:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
