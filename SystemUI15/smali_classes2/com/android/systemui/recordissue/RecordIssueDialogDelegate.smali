.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final devicePolicyResolver:Ldagger/Lazy;

.field public final factory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public issueTypeButton:Landroid/widget/Button;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public final onStarted:Ljava/lang/Runnable;

.field public final screenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

.field public screenRecordSwitch:Landroid/widget/Switch;

.field public final state:Lcom/android/systemui/recordissue/IssueRecordingState;

.field public final traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlagsClassic;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldagger/Lazy;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;Lcom/android/systemui/recordissue/IssueRecordingState;Lcom/android/systemui/recordissue/TraceurMessageSender;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;",
            "Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;",
            "Lcom/android/systemui/recordissue/IssueRecordingState;",
            "Lcom/android/systemui/recordissue/TraceurMessageSender;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->factory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p4, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->devicePolicyResolver:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iput-object p8, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->screenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

    iput-object p9, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    iput-object p10, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    iput-object p11, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->onStarted:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0322

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130e89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f080e38

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    sget-object v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$1;->INSTANCE:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$1;

    const v1, 0x7f130352

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$1$2;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    const v1, 0x7f130e8a

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->factory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    const p2, 0x7f0a0a3b

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object v1, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "key_recordScreen"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->screenRecordSwitch:Landroid/widget/Switch;

    const p2, 0x7f0a0215

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iget-object v1, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "key_takeBugReport"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$3$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a0549

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "key_issueTypeRes"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    new-instance v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$4$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->issueTypeButton:Landroid/widget/Button;

    return-void
.end method
