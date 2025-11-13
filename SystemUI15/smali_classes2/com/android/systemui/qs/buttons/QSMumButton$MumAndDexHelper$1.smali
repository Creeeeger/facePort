.class public final Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;
.super Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QSMumButton"

    const-string v1, "MumAndDexHelper, BaseUserAdapter notifyDataSetChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;->this$1:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
