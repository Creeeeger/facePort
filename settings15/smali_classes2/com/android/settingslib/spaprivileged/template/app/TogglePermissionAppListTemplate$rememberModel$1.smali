.class final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "context",
        "Landroid/content/Context;",
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
.field final synthetic $permissionType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;->this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;->$permissionType:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;->this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;->listModelProviderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;->$permissionType:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    invoke-interface {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;->createModel(Landroid/content/Context;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    move-result-object p0

    return-object p0
.end method
