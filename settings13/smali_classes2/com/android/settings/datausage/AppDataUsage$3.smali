.class Lcom/android/settings/datausage/AppDataUsage$3;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

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

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onItemSelected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppDataUsage"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycle(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 1011
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-boolean p4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    if-eqz p4, :cond_1

    .line 1012
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    const/16 p3, 0x65

    invoke-static {p1, p3}, Lcom/android/settings/datausage/AppDataUsage;->access$000(Lcom/android/settings/datausage/AppDataUsage;I)V

    .line 1013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "the mCycleSpinnerPosition:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p3}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 1015
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;I)V

    .line 1017
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycle(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    return-void

    .line 1019
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1020
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2, p3}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;I)V

    .line 1023
    :cond_2
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmIsCHNDataUsage(Lcom/android/settings/datausage/AppDataUsage;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1024
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide p4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {p2, p4, p5}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmStart(Lcom/android/settings/datausage/AppDataUsage;J)V

    .line 1025
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide p4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {p2, p4, p5}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmEnd(Lcom/android/settings/datausage/AppDataUsage;J)V

    .line 1028
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, p3}, Lcom/android/settings/datausage/AppDataUsage;->bindData(I)V

    .line 1030
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1032
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_screen_id:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1033
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_change_period_event_id:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1034
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    goto :goto_0

    .line 1037
    :cond_4
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object p1, p1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 1038
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bdc

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    .line 1040
    :cond_5
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bc8

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
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
