.class public final Lcom/android/settings/network/apn/PreferredApnRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RestorePreferredApnUri:Landroid/net/Uri;


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final context:Landroid/content/Context;

.field public final preferredApnUri:Landroid/net/Uri;

.field public final subId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/network/apn/PreferredApnRepository;->RestorePreferredApnUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->contentResolver:Landroid/content/ContentResolver;

    sget-object p1, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->preferredApnUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final collectPreferredApn(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->preferredApnUri:Landroid/net/Uri;

    const-string v2, "preferredApnUri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt;->contentChangeFlow(Landroid/content/Context;Landroid/net/Uri;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/network/apn/PreferredApnRepository$preferredApnFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/apn/PreferredApnRepository;)V

    const/4 p0, -0x1

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v7, Lcom/android/settings/network/apn/PreferredApnRepository$collectPreferredApn$1;

    const-class v3, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "suspendConversion0"

    const/4 v1, 0x2

    const-string v5, "collectPreferredApn$suspendConversion0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, p1, v7}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final setPreferredApn(Ljava/lang/String;)V
    .locals 3

    const-string v0, "apnId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "apn_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->preferredApnUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", preferredApnUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PreferredApnRepository"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/network/apn/PreferredApnRepository;->preferredApnUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
