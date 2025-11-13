.class final Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt;->RestrictedMenuItemImpl(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;->$restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;->$restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
