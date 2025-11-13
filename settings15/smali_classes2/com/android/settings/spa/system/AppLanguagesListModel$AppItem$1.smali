.class final Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;
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
.field final synthetic $this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    iput-object p2, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    iget-object v1, v1, Lcom/android/settings/spa/system/AppLanguagesListModel;->context:Landroid/content/Context;

    const-class v2, Lcom/android/settings/localepicker/AppLocalePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object v1, v1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v1, Lcom/android/settings/spa/system/AppLanguagesRecord;

    iget-object v1, v1, Lcom/android/settings/spa/system/AppLanguagesRecord;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    iget-object v1, v1, Lcom/android/settings/spa/system/AppLanguagesListModel;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/system/AppLanguagesRecord;

    iget-object p0, p0, Lcom/android/settings/spa/system/AppLanguagesRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
