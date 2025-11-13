.class public final Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# instance fields
.field public final endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

.field public final recordedTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final stopAction:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;Lkotlin/jvm/functions/Function0;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->stopAction:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->recordedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-object v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->Companion:Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->ICON:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    const v0, 0x7f130ff7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->recordedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    const v2, 0x7f130ff5

    const v3, 0x7f130ff6

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;->getDialogMessage(Landroid/app/ActivityManager$RunningTaskInfo;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f1303ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate$beforeCreate$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate$beforeCreate$1$1;-><init>(Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;)V

    const p0, 0x7f130ff4

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/view/EndScreenRecordingDialogDelegate;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method
