.class public final Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final onPermissionSummaryResult(ILjava/util/List;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;

    iget-object p2, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->context:Landroid/content/Context;

    const p3, 0x7f141f75

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->context:Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Lkotlin/Pair;

    const-string v2, "count"

    invoke-direct {v1, v2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object p3

    const v1, 0x7f141f72

    invoke-static {p1, v1, p3}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->context:Landroid/content/Context;

    const p2, 0x7f141f74

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p3}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;-><init>(Ljava/lang/String;Z)V

    move-object p1, p2

    :goto_2
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
