.class final Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $dialogPresenter:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppDisableButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->$dialogPresenter:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;->isUninstallBlockedByAdmin(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$disableButton$1;->$dialogPresenter:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    check-cast p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;->open()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
