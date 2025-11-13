.class public final Lcom/android/settings/network/apn/ApnSettings$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/apn/ApnSettings$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/16 p1, 0xc

    iget p2, p0, Lcom/android/settings/network/apn/ApnSettings$6;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xe29

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ApnSettings"

    const-string v1, "restoreDefaultApn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    invoke-virtual {p2, v0}, Lcom/android/settings/network/apn/ApnSettings;->showDialog(I)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v0, p2, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    iget v1, v0, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    iget v2, p2, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v5, "lifecycleOwner"

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance v2, Lcom/android/settings/network/apn/PreferredApnRepository$restorePreferredApn$1;

    invoke-direct {v2, v1, v0, v4}, Lcom/android/settings/network/apn/PreferredApnRepository$restorePreferredApn$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/apn/PreferredApnRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance v2, Lcom/android/settings/network/apn/PreferredApnRepository$restorePreferredApn$1;

    invoke-direct {v2, v1, v0, v4}, Lcom/android/settings/network/apn/PreferredApnRepository$restorePreferredApn$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/apn/PreferredApnRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xe2a

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
