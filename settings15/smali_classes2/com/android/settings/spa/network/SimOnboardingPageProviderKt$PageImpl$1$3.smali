.class final Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "it",
        "Landroidx/navigation/NavBackStackEntry;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $navHostController:Landroidx/navigation/NavHostController;

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$navHostController:Landroidx/navigation/NavHostController;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    const-string p4, "$this$composable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3$1;

    iget-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$navHostController:Landroidx/navigation/NavHostController;

    invoke-direct {p1, p2}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3$1;-><init>(Landroidx/navigation/NavHostController;)V

    iget-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/16 p4, 0x200

    invoke-static {p1, p2, p0, p3, p4}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt;->SimOnboardingSelectSimImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
