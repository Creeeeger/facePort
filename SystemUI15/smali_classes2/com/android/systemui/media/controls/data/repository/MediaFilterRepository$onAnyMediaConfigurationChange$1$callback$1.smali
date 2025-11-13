.class public final Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $applicationContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->this$0:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iput-object p3, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onLocaleListChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->this$0:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->locale:Ljava/util/Locale;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
