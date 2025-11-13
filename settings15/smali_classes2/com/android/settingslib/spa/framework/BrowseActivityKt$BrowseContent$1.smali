.class final Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/framework/BrowseActivityKt;->BrowseContent(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $initialIntent:Landroid/content/Intent;

.field final synthetic $isPageEnabled:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $sppRepository:Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$sppRepository:Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$initialIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$isPageEnabled:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.android.settingslib.spa.framework.compose.NavControllerWrapperImpl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$sppRepository:Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    iget-object v0, v0, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->pageProviderMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$isPageEnabled:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2, p2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;)V

    const v2, 0x2eaa8adc

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x1c8

    invoke-static {p2, v0, v1, p1, v2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt;->access$NavContent(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Ljava/util/Collection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$initialIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;->$sppRepository:Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->rootPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->rootPages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->navLink(Landroid/os/Bundle;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v2, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/16 v1, 0x48

    invoke-static {p2, v0, p0, p1, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt;->access$InitialDestination(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Landroid/content/Intent;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
