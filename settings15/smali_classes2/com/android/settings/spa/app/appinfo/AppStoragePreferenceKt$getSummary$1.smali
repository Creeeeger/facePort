.class final Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $sizeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$sizeState:Landroidx/compose/runtime/State;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$sizeState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$context:Landroid/content/Context;

    const v0, 0x7f1409d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/high16 v3, 0x40000

    invoke-static {v3, v2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->hasFlag(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const v2, 0x7f142d99    # 1.969625E38f

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const v2, 0x7f142d9a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;->$context:Landroid/content/Context;

    const v2, 0x7f142d8d

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
