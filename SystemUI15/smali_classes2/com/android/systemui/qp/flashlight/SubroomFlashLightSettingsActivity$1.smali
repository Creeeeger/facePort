.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRoundedCorners ,flexmode:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    const-string v2, "SubroomFlashLightSettingsActivity"

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105039c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_2
    return-void
.end method
