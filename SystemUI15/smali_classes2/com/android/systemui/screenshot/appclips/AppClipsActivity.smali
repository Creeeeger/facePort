.class public Lcom/android/systemui/screenshot/appclips/AppClipsActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;

.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingPackageUid:I

.field public mCancel:Landroid/widget/Button;

.field public mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mLayout:Landroid/view/View;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreview:Landroid/widget/ImageView;

.field public mResultReceiver:Landroid/os/ResultReceiver;

.field public mRoot:Landroid/view/View;

.field public mSave:Landroid/widget/Button;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

.field public final mViewModelFactory:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;


# direct methods
.method public static $r8$lambda$stcjMVf1JwQ0vVO3T941Qunv0VY(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mSave:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0a0f

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->updateImageDimensions()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    iget-object v2, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1, v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;Landroid/content/pm/PackageManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModelFactory:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mBroadcastReceiver:Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;

    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->ACTION_FINISH_FROM_TRAMPOLINE:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x4

    const-string v4, "com.android.systemui.permission.SELF"

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mBroadcastReceiver:Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageUid:I

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    iget-object v4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find notes app UID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppClipsActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    const-class v2, Landroid/os/ResultReceiver;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    const v1, 0x7f0a09ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0a0f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mSave:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mSave:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/scroll/CropView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0914

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModelFactory:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iput-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mScreenshotLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mBroadcastReceiver:Lcom/android/systemui/screenshot/appclips/AppClipsActivity$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mViewModel:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    :cond_0
    return-void
.end method

.method public final setError(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_CANCELLED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageUid:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public final updateImageDimensions()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    mul-float/2addr v4, v3

    div-float/2addr v4, v1

    float-to-int v1, v4

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iput v2, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    iput v2, v1, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    iput v2, v0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    iput v3, v0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCropView:Lcom/android/systemui/screenshot/scroll/CropView;

    mul-float/2addr v4, v1

    float-to-int v0, v4

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
