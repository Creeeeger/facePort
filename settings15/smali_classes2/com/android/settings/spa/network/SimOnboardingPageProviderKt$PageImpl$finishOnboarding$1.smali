.class final Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$finishOnboarding$1;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$finishOnboarding$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$finishOnboarding$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$finishOnboarding$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt$PageImpl$finishOnboarding$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService;->callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_FINISH:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
