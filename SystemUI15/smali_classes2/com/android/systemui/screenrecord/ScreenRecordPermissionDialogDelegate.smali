.class public final Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;
.super Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# static fields
.field public static final Companion:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Companion;

.field public static final MODES:Ljava/util/List;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public audioSwitch:Landroid/widget/Switch;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/android/systemui/screenrecord/RecordingController;

.field public final hostUid:I

.field public final hostUserHandle:Landroid/os/UserHandle;

.field public final onStartRecordingClicked:Ljava/lang/Runnable;

.field public options:Landroid/widget/Spinner;

.field public final systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public tapsSwitch:Landroid/widget/Switch;

.field public tapsView:Landroid/view/View;

.field public final theme:I

.field public final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->Companion:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Companion;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;ILcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserContextProvider;Ljava/lang/Runnable;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;IILandroid/content/Context;)V
    .locals 16

    move-object/from16 v8, p0

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->Companion:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const v3, 0x7f130fd5

    const v4, 0x7f130fee

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;-><init>(IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v10, 0x1

    const v11, 0x7f130fd4

    const v12, 0x7f130fed

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;-><init>(IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v0, 0x7f080aef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, 0x7f060604

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p7

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;-><init>(Ljava/util/List;Ljava/lang/String;ILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->hostUserHandle:Landroid/os/UserHandle;

    move/from16 v0, p2

    iput v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->hostUid:I

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->controller:Lcom/android/systemui/screenrecord/RecordingController;

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->onStartRecordingClicked:Ljava/lang/Runnable;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    move/from16 v0, p10

    iput v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->theme:I

    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;ILcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserContextProvider;Ljava/lang/Runnable;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/content/Context;)V
    .locals 13

    sget v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->$r8$clinit:I

    const v11, 0x7f140603

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;-><init>(Landroid/os/UserHandle;ILcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserContextProvider;Ljava/lang/Runnable;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;IILandroid/content/Context;)V

    return-void
.end method

.method public static final access$requestScreenCapture(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v1, v1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->tapsSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->audioSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_2

    move-object v4, v3

    :cond_2
    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v0, v3, v1, p1}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;IZLcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x2

    const/high16 v3, 0xc000000

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->controller:Lcom/android/systemui/screenrecord/RecordingController;

    iput-boolean v2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    new-instance p1, Lcom/android/systemui/screenrecord/RecordingController$3;

    const-wide/16 v6, 0xbb8

    const-wide/16 v8, 0x3e8

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/screenrecord/RecordingController$3;-><init>(Lcom/android/systemui/screenrecord/RecordingController;JJLandroid/app/PendingIntent;)V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->context:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->theme:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final getOptionsViewLayoutId()Ljava/lang/Integer;
    .locals 0

    const p0, 0x7f0d034f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->onCreate(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->onCreate(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreate(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V

    const p2, 0x7f130fec

    invoke-virtual {p0, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->setDialogTitle(I)V

    const p2, 0x7f130ffa

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const v1, 0x7f130feb

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    new-instance v2, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;-><init>(Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$2;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->cancelButton:Landroid/widget/TextView;

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    const p2, 0x7f0a0a3a

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->audioSwitch:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    const p2, 0x7f0a0a3d

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->tapsSwitch:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->audioSwitch:Landroid/widget/Switch;

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    sget-object p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$1;->INSTANCE:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$1;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->tapsSwitch:Landroid/widget/Switch;

    if-nez p1, :cond_6

    move-object p1, v0

    :cond_6
    sget-object p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$2;->INSTANCE:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$2;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    const p2, 0x7f0a0b58

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->tapsView:Landroid/view/View;

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p2, p2, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    const/4 v1, 0x0

    if-nez p2, :cond_9

    const/16 p2, 0x8

    goto :goto_3

    :cond_9
    move p2, v1

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move-object p1, v0

    :goto_4
    const p2, 0x7f0a0a35

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    new-instance p1, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    move-object p2, v0

    :goto_5
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->MODES:Ljava/util/List;

    const v3, 0x1090009

    invoke-direct {p1, p2, v3, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    if-nez p2, :cond_c

    move-object p2, v0

    :cond_c
    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    if-nez p1, :cond_d

    move-object p1, v0

    :cond_d
    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$3;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    if-nez p1, :cond_e

    move-object p1, v0

    :cond_e
    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$4;

    invoke-direct {p2}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$4;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->options:Landroid/widget/Spinner;

    if-nez p0, :cond_f

    goto :goto_6

    :cond_f
    move-object v0, p0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLongClickable(Z)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->tapsView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p0, p0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    if-nez p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
