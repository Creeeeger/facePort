.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPresetCommandFailed()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result v2

    new-instance v3, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;Ljava/util/List;II)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
