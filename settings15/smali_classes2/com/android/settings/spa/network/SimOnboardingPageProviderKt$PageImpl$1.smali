.class final Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/navigation/NavGraphBuilder;",
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
.field final synthetic $context:Landroid/content/Context;

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
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/navigation/NavHostController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$navHostController:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    const-string v0, "$this$NavHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$navHostController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$1;-><init>(Landroidx/navigation/NavHostController;Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x360800e5

    const/4 v10, 0x1

    invoke-direct {v8, v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v9, 0xfe

    const-string v1, "LabelSim"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$2;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v3, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SimOnboardingService;Landroid/content/Context;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x6dcd022e

    invoke-direct {v8, v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v9, 0xfe

    const-string v1, "PrimarySim"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$finishOnboarding:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1;->$navHostController:Landroidx/navigation/NavHostController;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$1$3;-><init>(Landroidx/navigation/NavHostController;Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p0, 0x2d1bba93

    invoke-direct {v8, p0, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v9, 0xfe

    const-string v1, "SelectSim"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
