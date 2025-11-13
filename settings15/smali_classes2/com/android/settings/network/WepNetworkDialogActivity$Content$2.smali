.class final Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/network/WepNetworkDialogActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/WepNetworkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;->this$0:Lcom/android/settings/network/WepNetworkDialogActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;->$context:Landroid/content/Context;

    const v2, 0x7f141947

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/16 v1, 0x152

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    iget-object p0, p0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;->this$0:Lcom/android/settings/network/WepNetworkDialogActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
