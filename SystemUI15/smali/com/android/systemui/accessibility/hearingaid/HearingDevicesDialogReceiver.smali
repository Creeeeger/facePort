.class public Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDialogManager:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogReceiver;->mDialogManager:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "com.android.systemui.action.LAUNCH_HEARING_DEVICES_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogReceiver;->mDialogManager:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->showDialog(Lcom/android/systemui/animation/Expandable;)V

    :cond_0
    return-void
.end method
