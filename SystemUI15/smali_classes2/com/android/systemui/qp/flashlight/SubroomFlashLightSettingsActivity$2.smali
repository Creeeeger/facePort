.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;->this$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    return-void
.end method
