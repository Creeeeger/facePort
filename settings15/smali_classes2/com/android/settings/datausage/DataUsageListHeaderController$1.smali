.class public final Lcom/android/settings/datausage/DataUsageListHeaderController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $sourceMetricsCategory:I

.field public final synthetic $subId:I

.field public final synthetic $template:Landroid/net/NetworkTemplate;

.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListHeaderController;Landroid/net/NetworkTemplate;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$template:Landroid/net/NetworkTemplate;

    iput p3, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$subId:I

    iput p4, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$sourceMetricsCategory:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$template:Landroid/net/NetworkTemplate;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$subId:I

    const-string v2, "network_template"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "subscriptionid"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->this$0:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object v1, v1, Lcom/android/settings/datausage/DataUsageListHeaderController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController$1;->$sourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x0

    const v3, 0x7f140641

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
