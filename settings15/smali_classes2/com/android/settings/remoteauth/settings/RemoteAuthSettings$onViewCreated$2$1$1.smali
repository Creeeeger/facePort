.class public final Lcom/android/settings/remoteauth/settings/RemoteAuthSettings$onViewCreated$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/remoteauth/settings/RemoteAuthSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/remoteauth/settings/RemoteAuthSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettings$onViewCreated$2$1$1;->this$0:Lcom/android/settings/remoteauth/settings/RemoteAuthSettings;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;

    iget-object p0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettings$onViewCreated$2$1$1;->this$0:Lcom/android/settings/remoteauth/settings/RemoteAuthSettings;

    iget-object p0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettings;->adapter:Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsRecyclerViewAdapter;

    iget-object p1, p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsRecyclerViewAdapter;->uiStates:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
