.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# static fields
.field public static fontSizeHasBeenChangedFromTile:Z


# instance fields
.field public final CHANGE_BY_BUTTON_DELAY_MS:J

.field public final CHANGE_BY_SEEKBAR_DELAY_MS:J

.field public final MIN_UPDATE_INTERVAL_MS:J

.field public final backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public cancelUpdateFontScaleRunnable:Ljava/lang/Runnable;

.field public final configuration:Landroid/content/res/Configuration;

.field public final context:Landroid/content/Context;

.field public doneButton:Landroid/widget/Button;

.field public final fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;

.field public final lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public lastUpdateTime:J

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

.field public final strEntryValues:[Ljava/lang/String;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public final systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public title:Landroid/widget/TextView;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/view/LayoutInflater;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    iput-object p5, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p6, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p7, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p9, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 p2, 0x320

    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->MIN_UPDATE_INTERVAL_MS:J

    const-wide/16 p2, 0x64

    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->CHANGE_BY_SEEKBAR_DELAY_MS:J

    const-wide/16 p2, 0x12c

    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->CHANGE_BY_BUTTON_DELAY_MS:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f03005b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->strEntryValues:[Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->configuration:Landroid/content/res/Configuration;

    new-instance p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;

    invoke-direct {p1, p8, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;-><init>(Landroid/os/Handler;Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;

    return-void
.end method

.method public static final access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-boolean p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->fontSizeHasBeenChangedFromTile:Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$changeFontSize$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$changeFontSize$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->fontSizeHasBeenChangedFromTile:Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastUpdateTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->MIN_UPDATE_INTERVAL_MS:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    add-long/2addr p2, v3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->cancelUpdateFontScaleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    new-instance p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScaleDelayed$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScaleDelayed$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->cancelUpdateFontScaleRunnable:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v0, 0x7f1306ec

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0107

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p0, 0x1

    const/4 v0, -0x1

    const v2, 0x7f130ef1

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/app/Dialog;Landroid/content/res/Configuration;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->title:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance p2, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 11

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const p2, 0x10201e2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->title:Landroid/widget/TextView;

    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    const p2, 0x7f0a0468

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->strEntryValues:[Ljava/lang/String;

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, p2, v3

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/16 v6, 0x64

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f1306eb

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    iput-object v0, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    iget-object v1, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    aget-object v1, v5, v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    if-nez v0, :cond_3

    move-object v0, v3

    :cond_3
    array-length v1, p2

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iget-object v0, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const-string v5, "font_scale"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v5, v6, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getFloatForUser(Ljava/lang/String;FI)F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    array-length v7, p2

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, p2, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v9, v2, v10, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    sub-int/2addr v8, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_2

    :cond_5
    array-length p2, p2

    add-int/lit8 v8, p2, -0x1

    :goto_3
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    if-nez p2, :cond_6

    move-object p2, v3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p2, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p2, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    if-nez p2, :cond_7

    move-object p2, v3

    :cond_7
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V

    iget-object p2, p2, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

    iput-object v0, p2, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    move-object v3, p2

    :goto_4
    new-instance p2, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$2;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;

    invoke-interface {v1, v5, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop(Landroid/app/Dialog;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->cancelUpdateFontScaleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->cancelUpdateFontScaleRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void
.end method
