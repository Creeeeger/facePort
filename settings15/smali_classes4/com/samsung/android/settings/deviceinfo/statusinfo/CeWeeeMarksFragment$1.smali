.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x28

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v0, 0x7f141e7b

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
