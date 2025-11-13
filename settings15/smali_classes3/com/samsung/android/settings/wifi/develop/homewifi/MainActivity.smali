.class public Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

.field public mBottomView:Landroid/view/View;

.field public final mColorBlue:I

.field public final mColorGray:I

.field public mCurrentFragment:Landroidx/fragment/app/Fragment;

.field public mLeftButton:Landroid/widget/TextView;

.field public final mOnBackPressedCallBack:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;

.field public final mProgressAniViews:Ljava/util/ArrayList;

.field public mProgressBar:Landroid/view/View;

.field public mProgressFullImageView:Landroid/view/View;

.field public mProgressLayout:Landroid/view/View;

.field public final mProgressViews:Ljava/util/ArrayList;

.field public mRightButton:Landroid/widget/TextView;

.field public mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

.field public final mScanReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;

.field public mSelectedBssids:Ljava/util/ArrayList;

.field public mSignalGuideFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalGuideFragment;

.field public mSignalMeasureFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;

.field public mTitleView:Landroid/widget/TextView;

.field public mWaitingForScanResult:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    const-string v0, "#0381fe"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mColorBlue:I

    const-string v0, "#d9d3d3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mColorGray:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWaitingForScanResult:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mOnBackPressedCallBack:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;

    return-void
.end method


# virtual methods
.method public final initAdviserFragment()V
    .locals 5

    const-string v0, "HomeWifi.MainActivity"

    const-string v1, "initAdviserFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mProgressDecorator:Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iget-boolean v3, v2, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->selected:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mSelectedBssids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "selected bssids="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HomeWifi.AdviserFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    const v2, 0x7f0a0412

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    const/4 v0, 0x1

    const-string v1, "Advice for home Wi-Fi setup"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mSelectedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v3, "Next"

    :cond_3
    const-string v0, "Back"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->resetProgressAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final initScanFragment()V
    .locals 4

    const-string v0, "HomeWifi.MainActivity"

    const-string v1, "initScanFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    const/4 v2, 0x0

    const v3, 0x7f0a0412

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    const-string v0, "Select targeting Wi-Fi networks"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setProgress(ILjava/lang/String;)V

    const-string v0, "Refresh"

    const-string v2, "Next"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->resetProgressAnimation()V

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setProgressAnimation(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HomeWifi.MainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0a62

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0be8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0be0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressLayout:Landroid/view/View;

    const p1, 0x7f0a0bdd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressFullImageView:Landroid/view/View;

    const p1, 0x7f0a02ab

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    const p1, 0x7f0a02b4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bd7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0be1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bd8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0be2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bd9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0be3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bda

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bcd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bce

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bcf

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    const v0, 0x7f0a0bd0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a1041

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a023a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mBottomView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mOnBackPressedCallBack:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->scanResultUpdated(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->initScanFragment()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWaitingForScanResult:Z

    return-void
.end method

.method public final resetProgressAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scanResultUpdated(Ljava/util/List;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan result updated="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeWifi.MainActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->update(Ljava/util/List;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v4, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget-object v6, v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    const-string v7, "\\["

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-string v13, "\\+"

    if-lt v10, v12, :cond_2

    aget-object v9, v9, v11

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    array-length v10, v9

    if-ne v10, v11, :cond_3

    aget-object v9, v9, v3

    const-string v10, "]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v5, v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "dumpAllKeyMgmt: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    if-ne p1, p0, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mSsidSearchHelper:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iget-object v6, v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    move v8, v3

    :goto_5
    if-ge v8, v6, :cond_9

    iget-object v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget-object v10, v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-ne v8, v6, :cond_7

    iget-object v8, v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mSsidSearchHelper:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    const-string p0, "# of SSIDs added: "

    const-string v2, " -> "

    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updated: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "HomeWifi.SsidListAdapter"

    invoke-static {v2, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;)V

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    :cond_d
    return-void
.end method

.method public final setButtons(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setProgress(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressFullImageView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v0, v1

    :goto_0
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f080ace

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mColorBlue:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    rem-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const v2, 0x7f080b01

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mColorGray:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setProgressAnimation(II)V
    .locals 5

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressViews:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    const v2, 0x7f080ae3

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    const/4 v4, 0x1

    if-eq p2, v4, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressFullImageView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f080ae2

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "sec_wifi_labs_progress_loading_waiting.json"

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v0, "sec_wifi_labs_progress_loading_completed.json"

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v0, "sec_wifi_labs_progress_loading_after.json"

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "sec_wifi_labs_progress_loading.json"

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressAniViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method
