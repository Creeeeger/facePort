.class Lcom/android/settings/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;


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

    .line 986
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroidx/picker/widget/SeslDatePicker;JJ)V
    .locals 9

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDateSet(), mStartTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mEndTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDataUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmIsCHNDataUsage(Lcom/android/settings/datausage/AppDataUsage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 990
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1, p2, p3}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmStart(Lcom/android/settings/datausage/AppDataUsage;J)V

    .line 991
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1, p4, p5}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmEnd(Lcom/android/settings/datausage/AppDataUsage;J)V

    .line 992
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$mqueryNetworkAsyncCHN(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/CycleAdapter;->setIsSettedDate(Z)V

    .line 995
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/datausage/CycleAdapter;->setStartTime(J)V

    .line 996
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/android/settings/datausage/CycleAdapter;->setEndTime(J)V

    .line 997
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    new-instance v8, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v7, 0x1

    move-object v1, v8

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    invoke-virtual {p1, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 998
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycle(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    return-void
.end method
