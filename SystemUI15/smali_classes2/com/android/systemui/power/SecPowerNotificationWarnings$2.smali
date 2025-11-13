.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    if-eqz p1, :cond_0

    const-string p1, "PowerUI.Notification"

    const-string v0, "Fold state has been changed so dismiss UnintentionalLcdOnView"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
