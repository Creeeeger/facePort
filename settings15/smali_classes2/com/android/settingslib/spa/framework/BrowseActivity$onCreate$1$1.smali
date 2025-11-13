.class final Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
.field final synthetic this$0:Lcom/android/settingslib/spa/framework/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/BrowseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1;->this$0:Lcom/android/settingslib/spa/framework/BrowseActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1;->this$0:Lcom/android/settingslib/spa/framework/BrowseActivity;

    sget v0, Lcom/android/settingslib/spa/framework/BrowseActivity;->$r8$clinit:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p2, :cond_4

    check-cast p2, Lcom/android/settings/spa/SettingsSpaEnvironment;

    iget-object p2, p2, Lcom/android/settings/spa/SettingsSpaEnvironment;->pageProviderRepository:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1;->this$0:Lcom/android/settingslib/spa/framework/BrowseActivity;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x534a15e3

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_3

    :cond_2
    new-instance v7, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1$1$1;

    const-string v5, "isPageEnabled(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/settingslib/spa/framework/BrowseActivity;

    const-string v4, "isPageEnabled"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v7

    :cond_3
    check-cast v1, Lkotlin/reflect/KFunction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1$1;->this$0:Lcom/android/settingslib/spa/framework/BrowseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x208

    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/settingslib/spa/framework/BrowseActivityKt;->BrowseContent(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
