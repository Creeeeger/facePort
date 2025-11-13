.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SelectedDayViewModel.java"


# instance fields
.field mDateChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;

.field private mSelectedDay:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTimeChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;

.field mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 19
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mTimeChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;

    .line 23
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mDateChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;

    .line 32
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->getSelectedDay()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSelectedDay()Landroidx/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mSelectedDay:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mSelectedDay:Landroidx/lifecycle/MutableLiveData;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mTimeChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->setTimeChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mDateChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->setDateChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;)V

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mSelectedDay:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method protected onCleared()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mTimeChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->unsetTimeChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mDateChangedListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->unsetDateChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;)V

    return-void
.end method

.method public updateSelectedDay(Ljava/lang/Long;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mSelectedDay:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->mSelectedDay:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
