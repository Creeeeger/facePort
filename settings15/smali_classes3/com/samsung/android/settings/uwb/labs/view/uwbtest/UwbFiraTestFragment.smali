.class public Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;


# instance fields
.field public mConfigPreferences:Landroidx/preference/PreferenceCategory;

.field public mContext:Landroid/content/Context;

.field public final mControllers:Ljava/util/List;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

.field public mUwbConfigUtil:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;

.field public mUwbFiraTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbFiraTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iput-object p0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    iput-object p0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0299

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const-string v2, "UwbFiraTestFragmentController"

    if-nez v1, :cond_0

    const-string p1, "bottomLayout null!!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iget-object v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0d09db

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez p1, :cond_1

    const-string p1, "mTestButtonView null!!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mOpenMenu:Landroid/view/MenuItem;

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStartMenu:Landroid/view/MenuItem;

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStopMenu:Landroid/view/MenuItem;

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCloseMenu:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;)V

    iput-object v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    :goto_0
    iget-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbFiraTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170207

    return p0
.end method

.method public final onButtonClicked(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mConfigPreferences:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mConfigPreferences:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UwbFiraTestFragment"

    const-string v0, "CREATE: UwbFiraTestFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbFiraTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/uwb/RangingSession;->close()V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/uwb/RangingReport;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingMeasurement;

    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->status:I

    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getLineOfSight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->nlos:I

    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v2

    iput v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->distance:I

    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getRssiDbm()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->rssi:I

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mTime:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mSuccessCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mSuccessCnt:I

    invoke-virtual {v2}, Landroid/uwb/DistanceMeasurement;->getMeters()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->distance:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistVal:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    iget v3, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mTime:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/uwb/RangingMeasurement;

    invoke-virtual {p1}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/uwb/DistanceMeasurement;->getMeters()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int p1, v6

    int-to-float p1, p1

    invoke-direct {v2, v3, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineDataSet:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMax$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineData:Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    iget-object v3, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    iget-object p1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    iget-object v0, p1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v3, p1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iput v2, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    iput v2, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    iget-object v4, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move v4, v1

    :goto_0
    iget-object v5, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-ge v4, v7, :cond_1

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    aput v6, v5, v3

    const/4 v3, 0x5

    aput v6, v5, v3

    aput v2, v5, v1

    const/4 v3, 0x4

    aput v2, v5, v3

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v2, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v0, p1, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mErrorCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mErrorCnt:I

    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mSuccessCnt:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mErrorCnt:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mRangingCnt:I

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onStateReceive(I)V
    .locals 0

    return-void
.end method

.method public final setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mUwbConfigList:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v4, 0x0

    const-string/jumbo v6, "session_id"

    const/4 v5, 0x0

    const/4 v2, 0x1

    const v3, 0x7f143196

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f0300cb

    const-string v13, "device_type"

    const v12, 0x7f0300cc

    const/4 v9, 0x0

    const v10, 0x7f143157

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f0300c9

    const-string v7, "device_role"

    const v6, 0x7f0300ca

    const/4 v3, 0x0

    const v4, 0x7f143156

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string v13, "device_address"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f143155

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string v7, "dest_address_list"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f143152

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03018b

    const-string/jumbo v13, "session_type"

    const v12, 0x7f03018c

    const/4 v9, 0x0

    const v10, 0x7f14319a

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030088

    const-string v7, "channel_number"

    const v6, 0x7f030089

    const/4 v3, 0x0

    const v4, 0x7f14314d

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03011b

    const-string v13, "multi_node_mode"

    const v12, 0x7f03011c

    const v10, 0x7f14317b

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string/jumbo v7, "slot_duration_rstu"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f1431a7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string v13, "ranging_interval_ms"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f14318d

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v7, "slots_per_ranging_round"

    const v4, 0x7f1431a8

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03010d

    const-string v13, "fcs_type"

    const v12, 0x7f03010e

    const/4 v9, 0x0

    const v10, 0x7f14315f

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f03013e

    const-string v7, "preamble_code_index"

    const v6, 0x7f03013e

    const/4 v3, 0x0

    const v4, 0x7f143181

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03018f

    const-string/jumbo v13, "sfd_id"

    const v12, 0x7f030190

    const v10, 0x7f1431a3

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030146

    const-string v7, "psdu_data_rate"

    const v6, 0x7f030147

    const v4, 0x7f143184

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03013c

    const-string v13, "preamble_duration"

    const v12, 0x7f03013d

    const v10, 0x7f143182

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030142

    const-string v7, "prf_mode"

    const v6, 0x7f030143

    const v4, 0x7f143183

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string v13, "cap_size_range"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f14314c

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f03015d

    const-string/jumbo v7, "scheduled_mode"

    const v6, 0x7f03015e

    const v4, 0x7f143194

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03010a

    const-string v13, "mac_address_mode"

    const v12, 0x7f03010b

    const/4 v9, 0x0

    const v10, 0x7f143174

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string/jumbo v7, "session_priority"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f143199

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string v13, "has_result_report_phase"

    const/4 v12, 0x0

    const/4 v9, 0x2

    const v10, 0x7f143166

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "has_control_message"

    const/4 v3, 0x2

    const v4, 0x7f143164

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "has_ranging_control_phase"

    const v10, 0x7f143165

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030116

    const-string v7, "measurement_report_type"

    const v6, 0x7f030117

    const/4 v3, 0x0

    const v4, 0x7f143178

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "hopping_mode"

    const v10, 0x7f143169

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string v7, "block_stride_length"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f14314a

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "in_band_termination_attempt_count"

    const/4 v9, 0x1

    const v10, 0x7f14316a

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f03014c

    const-string v7, "ranging_round_usage"

    const v6, 0x7f03014d

    const/4 v3, 0x0

    const v4, 0x7f14318e

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "initiation_time_ms"

    const v10, 0x7f14316b

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string v7, "absolute_initiation_time_us"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f143146

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "max_ranging_round_retries"

    const v10, 0x7f143146

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030153

    const-string/jumbo v7, "rframe_config"

    const v6, 0x7f030154

    const/4 v3, 0x0

    const v4, 0x7f143193

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f03012e

    const-string/jumbo v13, "sts_segment_count"

    const v12, 0x7f03012f

    const/4 v9, 0x0

    const v10, 0x7f1431b0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f03019a

    const-string/jumbo v7, "sts_length"

    const v6, 0x7f03019b

    const v4, 0x7f1431af

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string/jumbo v13, "session_key"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f143197

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string/jumbo v7, "subsession_key"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f1431b2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f030068

    const-string v13, "bprf_phr_data_rate"

    const v12, 0x7f030069

    const/4 v9, 0x0

    const v10, 0x7f14314b

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "is_tx_adaptive_payload_power_enabled"

    const/4 v3, 0x2

    const v4, 0x7f14316f

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f030198

    const-string/jumbo v13, "sts_config"

    const v12, 0x7f030199

    const v10, 0x7f1431ae

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v7, "sub_session_id"

    const/4 v3, 0x1

    const v4, 0x7f1431b1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f030013

    const-string v13, "aoa_type"

    const v12, 0x7f030014

    const v10, 0x7f143149

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v7, "vendor_id"

    const v4, 0x7f1431b8

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string/jumbo v13, "static_sts_iv"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f1431ab

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "is_rssi_reporting_enabled"

    const/4 v3, 0x2

    const v4, 0x7f14316e

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "is_diagnostics_enabled"

    const/4 v9, 0x2

    const v10, 0x7f14316d

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "is_key_rotation_enabled"

    const v4, 0x7f143170

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "key_rotation_rate"

    const/4 v9, 0x1

    const v10, 0x7f143171

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f030011

    const-string v7, "aoa_result_request"

    const v6, 0x7f030012

    const/4 v3, 0x0

    const v4, 0x7f143148

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f030149

    const-string v13, "range_data_ntf_config"

    const v12, 0x7f03014a

    const/4 v9, 0x0

    const v10, 0x7f143186

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string v7, "range_data_ntf_proximity_near"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f143188

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v11, 0x0

    const-string v13, "range_data_ntf_proximity_far"

    const/4 v12, 0x0

    const/4 v9, 0x1

    const v10, 0x7f143187

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "has_time_of_flight_report"

    const/4 v3, 0x2

    const v4, 0x7f143167

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "has_angle_of_arrival_azimuth_report"

    const/4 v9, 0x2

    const v10, 0x7f143161

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "has_angle_of_arrival_elevation_report"

    const v4, 0x7f143162

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "has_angle_of_arrival_figure_of_merit_report"

    const v10, 0x7f143163

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "num_of_msrmt_focus_on_range"

    const/4 v3, 0x1

    const v4, 0x7f14317e

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "num_of_msrmt_focus_on_aoa_azimuth"

    const/4 v9, 0x1

    const v10, 0x7f14317c

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "num_of_msrmt_focus_on_aoa_elevation"

    const v4, 0x7f14317d

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "ranging_error_streak_timeout_ms"

    const v10, 0x7f14318b

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "link_layer_mode"

    const v4, 0x7f143173

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "min_frames_per_rr"

    const v10, 0x7f143179

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v7, "mtu_size"

    const v4, 0x7f14317a

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string v13, "inter_frame_interval"

    const v10, 0x7f14316c

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v7, "ul_tdoa_tx_interval"

    const v4, 0x7f1431b6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v13, "ul_tdoa_random_window"

    const v10, 0x7f1431b5

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f0301bb

    const-string/jumbo v7, "ul_tdoa_device_id_type"

    const v6, 0x7f0301bc

    const/4 v3, 0x0

    const v4, 0x7f1431b4

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const-string/jumbo v13, "ul_tdoa_device_id"

    const v10, 0x7f1431b3

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v5, 0x7f0301bd

    const-string/jumbo v7, "ul_tdoa_tx_timestamp_type"

    const v6, 0x7f0301be

    const v4, 0x7f1431b7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const v11, 0x7f0300e1

    const-string v13, "filter_type"

    const v12, 0x7f0300e2

    const/4 v9, 0x0

    const v10, 0x7f143160

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    const/4 v5, 0x0

    const-string v7, "max_number_of_measurements"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const v4, 0x7f143175

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbConfigUtil:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;

    const-string/jumbo p1, "uwb_fira_one_to_one_ranging_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "fira_config"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mConfigPreferences:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbConfigUtil:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;

    iget-object v1, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mUwbConfigList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mUwbConfigList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;

    iget v5, v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;->type:I

    iget v6, v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;->title_id:I

    iget-object v7, v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;->key:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroidx/preference/SecDropDownPreference;

    invoke-direct {v8, v5, v2}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v8, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroidx/preference/Preference;->setTitle(I)V

    iget v5, v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;->entrys_id:I

    invoke-virtual {v8, v5}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget v4, v4, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil$UwbPreference;->entry_values_id:I

    invoke-virtual {v8, v4}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v5, v0, :cond_3

    iget-object v4, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mContext:Landroid/content/Context;

    new-instance v5, Landroidx/preference/SecEditTextPreference;

    const v8, 0x7f040222

    invoke-direct {v5, v4, v2, v8}, Landroidx/preference/SecEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v4, 0x7f0d09f6

    iput v4, v5, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v5, v4, :cond_1

    iget-object v4, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigUtil;->mContext:Landroid/content/Context;

    new-instance v5, Landroidx/preference/SecSwitchPreference;

    invoke-direct {v5, v4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mConfigPreferences:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigController;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->mUwbFiraTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigListener;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    goto :goto_2

    :cond_5
    return-void
.end method
