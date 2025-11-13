.class public final Lcom/android/settings/spa/network/SimOnboardingPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider;

.field public static final onboardingService:Lcom/android/settings/network/SimOnboardingService;

.field public static final parameter:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider;

    const-string v1, "subId"

    sget-object v2, Lcom/android/settings/spa/network/SimOnboardingPageProvider$parameter$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPageProvider$parameter$1;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->parameter:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    sput-object v0, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    return-void
.end method

.method public static synthetic getOnboardingService$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x54b1f872

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/navigation/Navigator;

    invoke-static {v0, p2}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v0

    const/16 v1, 0x48

    sget-object v2, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-static {v2, v0, p2, v1}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt;->PageImpl(Lcom/android/settings/network/SimOnboardingService;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/network/SimOnboardingPageProvider$Page$1;-><init>(Lcom/android/settings/spa/network/SimOnboardingPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "SimOnboardingPageProvider"

    return-object p0
.end method

.method public final getParameter()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/settings/spa/network/SimOnboardingPageProvider;->parameter:Ljava/util/List;

    return-object p0
.end method
