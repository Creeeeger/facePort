.class final Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field final synthetic $checked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $restrictedModeSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $summaryIfNoRestricted:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$restrictedModeSupplier:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$summaryIfNoRestricted:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$checked:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$restrictedModeSupplier:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$summaryIfNoRestricted:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    const-string v2, "getString(...)"

    const v3, 0x7f140d0a

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$checked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;->enterpriseRepository:Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;

    if-eqz v1, :cond_2

    const-string p0, "Settings.ENABLED_BY_ADMIN_SWITCH_SUMMARY"

    const v1, 0x7f140df9

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->getEnterpriseString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Settings.DISABLED_BY_ADMIN_SWITCH_SUMMARY"

    const v1, 0x7f140d0c

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnterpriseRepository;->getEnterpriseString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion$getSummary$1;->$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
