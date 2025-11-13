.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeToggleAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v5, 0x10405e7

    const v6, 0x10405e6

    const v2, 0x10803a9

    const v3, 0x10803a8

    const v4, 0x10405ec

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;IIIII)V

    return-void
.end method


# virtual methods
.method public final onToggle(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
