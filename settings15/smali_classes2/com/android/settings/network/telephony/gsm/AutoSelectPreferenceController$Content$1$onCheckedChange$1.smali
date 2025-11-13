.class final Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newChecked",
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $isAutoOverridableFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settingslib/spa/framework/compose/OverridableFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iput-object p3, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->$isAutoOverridableFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1$1;

    iget-object v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->$isAutoOverridableFlow:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settingslib/spa/framework/compose/OverridableFlow;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$getMContext$p$s-1317457118(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1$onCheckedChange$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$getMContext$p$s-1317457118(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$NetworkSelectActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$getSubId$p(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
