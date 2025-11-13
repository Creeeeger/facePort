.class public final Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# static fields
.field public static final MODES:Ljava/util/List;


# instance fields
.field public mAudioSwitch:Landroid/widget/Switch;

.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mOnStartRecordingClicked:Ljava/lang/Runnable;

.field public mOptions:Landroid/widget/Spinner;

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public mTapsSwitch:Landroid/widget/Switch;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/screenrecord/RecordingController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOnStartRecordingClicked:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    const p2, 0x7f130ffa

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    const p2, 0x7f0d034c

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setContentView(I)V

    const p2, 0x7f0a0223

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0232

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0a3a

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mAudioSwitch:Landroid/widget/Switch;

    const p2, 0x7f0a0a3d

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mTapsSwitch:Landroid/widget/Switch;

    const p2, 0x7f0a0a35

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->MODES:Ljava/util/List;

    const v1, 0x1090009

    invoke-direct {p2, p1, v1, v0}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    new-instance p2, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$1;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setLongClickable(Z)V

    return-void
.end method
