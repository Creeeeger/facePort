.class public Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCircleView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

.field public mContentView:Landroid/view/View;

.field public mEndTimeView:Landroid/widget/TextView;

.field public final mObserver:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;

.field public mTimeView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

.field public mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mObserver:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->getInstance()Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    iput-object p0, p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "in_trusted_location"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mObserver:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0564

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a1026

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mCircleView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a1032

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimeView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a102a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mEndTimeView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a04d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "pp_security_delay_bundle"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "pp_package_name"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "pp_security_delay_description_res"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getStringFromPackage(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->setLinkableText(Landroid/widget/TextView;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mObserver:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStart()V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "delay_expiration_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mandatory_biometrics_delay_time"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v7, v1, v3

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v1, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    sput-wide v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sInputMillis:J

    sput-wide v7, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    iget-object v6, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTimer() / millis = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProtectionTimerManager"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCountDownTimer() / time= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / COUNT_DOWN_ADJUSTMENT = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECOND_MILLIS:J

    div-long v9, v7, v3

    const-wide/16 v11, 0x32

    cmp-long v1, v9, v11

    const-wide/16 v13, 0xa

    if-lez v1, :cond_1

    move-wide v9, v11

    goto :goto_1

    :cond_1
    cmp-long v1, v9, v13

    if-gez v1, :cond_2

    move-wide v9, v13

    :cond_2
    :goto_1
    new-instance v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;JJ)V

    sput-object v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startCountDownTimer() / "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    if-nez v5, :cond_3

    const-string v5, "null"

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mCircleView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

    if-eqz v1, :cond_c

    sget-wide v6, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sInputMillis:J

    sget-wide v8, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    const-string v10, "ProtectionTimerCircleView"

    const-string v15, "init()"

    invoke-static {v10, v15}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v15, :cond_5

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    iput-object v15, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    :cond_5
    iget-object v15, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v15, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_6

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    :cond_6
    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_7

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    :cond_7
    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_8

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    :cond_8
    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v14, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_9

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    :cond_9
    iget-object v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f0604df

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBackgroundColor:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f0604e0

    invoke-virtual {v5, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleOnGoingColor:I

    iget-object v5, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    iget v13, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBackgroundColor:I

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->updateTime(JJ)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->setCircleSize()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->setCircleStrokeWidth()V

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mCircleView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Start()"

    invoke-static {v10, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "setDrawInterval()"

    invoke-static {v10, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v5, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sInputMillis:J

    const-wide/16 v7, 0xb4

    add-long/2addr v5, v7

    div-long/2addr v5, v3

    sput-wide v5, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sDrawInterval:J

    cmp-long v3, v5, v11

    if-lez v3, :cond_a

    sput-wide v11, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sDrawInterval:J

    goto :goto_2

    :cond_a
    const-wide/16 v3, 0xa

    cmp-long v5, v5, v3

    if-gez v5, :cond_b

    sput-wide v3, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sDrawInterval:J

    :cond_b
    :goto_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mHandler:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    if-eqz v1, :cond_c

    sget-wide v3, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sDrawInterval:J

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimeView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

    sget-wide v3, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeTextView(J)V

    iget-object v1, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mEndTimeView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-wide v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v11, "ur"

    const-string/jumbo v12, "zh"

    const-string v8, "ko"

    const-string v9, "ja"

    const-string v10, "iw"

    const-string v13, "my"

    const-string v14, "hu"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x7

    if-ge v8, v9, :cond_e

    aget-object v9, v4, v8

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ur"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "a h:mm"

    goto :goto_4

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    const-string v4, "h:mm a"

    :goto_4
    if-eqz v3, :cond_f

    const-string v4, "HH:mm"

    :cond_f
    new-instance v3, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AM"

    const-string v5, "am"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PM"

    const-string v5, "pm"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "pauseTimer() : false"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mIsPause:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "stopTimer()"

    const-string v1, "ProtectionTimerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimerManager:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "pauseTimer() : true"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mIsPause:Z

    return-void
.end method
