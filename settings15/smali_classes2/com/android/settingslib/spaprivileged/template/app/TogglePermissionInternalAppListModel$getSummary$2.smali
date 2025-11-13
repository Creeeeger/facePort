.class final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
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
.field final synthetic $allowed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;->this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;->$allowed:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;->this$0:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;->$allowed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "getString(...)"

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->context:Landroid/content/Context;

    const v0, 0x7f1403a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->context:Landroid/content/Context;

    const v0, 0x7f1403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
