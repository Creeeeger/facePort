.class public final Lcom/android/keyguard/KeyguardSliceViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBgHandler:Landroid/os/Handler;

.field public mClickActions:Ljava/util/Map;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSliceViewController$1;

.field public mDisplayId:I

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyguardSliceUri:Landroid/net/Uri;

.field public mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

.field public final mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

.field public mSlice:Landroidx/slice/Slice;

.field public final mTunable:Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static $r8$lambda$lUy0jQLhlGlsmvVdjvilmBh6_ps(Lcom/android/keyguard/KeyguardSliceViewController;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "content://com.android.systemui.keyguard/main"

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    sget-object v3, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    new-instance v3, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSliceView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p3, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;

    new-instance p3, Lcom/android/keyguard/KeyguardSliceViewController$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSliceViewController$1;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSliceViewController$1;

    new-instance p3, Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSliceViewController$2;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    new-instance p3, Lcom/android/keyguard/KeyguardSliceViewController$3;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSliceViewController$3;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mBgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p7, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p8, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSliceViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardSliceViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mSlice: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  mClickActions: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;

    const-string v1, "keyguard_slice_uri"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSliceViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyguardSliceViewCtrl@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunable:Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSliceViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyguardSliceViewCtrl@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public final refresh()V
    .locals 4

    const-string v0, "KeyguardSliceViewController#refresh"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content://com.android.systemui.keyguard/main"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v0, "KeyguardSliceViewCtrl"

    const-string v1, "Keyguard slice not bound yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/slice/SliceViewManagerWrapper;

    invoke-direct {v1, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceViewManagerWrapper;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceViewController$2;->onChanged(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final showSlice(Landroidx/slice/Slice;)V
    .locals 4

    const-string v0, "KeyguardSliceViewController#showSlice"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    new-instance v1, Landroidx/slice/widget/ListContent;

    invoke-direct {v1, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    iget-object p1, v1, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    iget-object v2, v2, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v3, "list_item"

    invoke-static {v2, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, v1, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSliceView;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v1}, Lcom/android/keyguard/KeyguardSliceView;->showSlice(Landroidx/slice/widget/RowContent;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
