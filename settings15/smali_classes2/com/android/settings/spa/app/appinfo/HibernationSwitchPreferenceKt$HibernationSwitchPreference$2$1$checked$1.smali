.class final Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic $isCheckedState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->$isCheckedState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->$isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;->changeable:Lkotlin/jvm/functions/Function0;

    check-cast v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$changeable$1;

    invoke-virtual {v0}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$changeable$1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->$isCheckedState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$checked$1;->$isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
