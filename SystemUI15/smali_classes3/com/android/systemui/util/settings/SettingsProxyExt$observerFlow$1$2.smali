.class final Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $observer:Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$observer$1;

.field final synthetic $this_observerFlow:Lcom/android/systemui/util/settings/UserSettingsProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/UserSettingsProxy;Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$observer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;->$this_observerFlow:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iput-object p2, p0, Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;->$observer:Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$observer$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;->$this_observerFlow:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object p0, p0, Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$2;->$observer:Lcom/android/systemui/util/settings/SettingsProxyExt$observerFlow$1$observer$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void
.end method
