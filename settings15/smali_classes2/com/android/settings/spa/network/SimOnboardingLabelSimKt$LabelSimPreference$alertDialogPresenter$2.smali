.class final Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;
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
.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;

.field final synthetic $subInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic $titleSimName$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$subInfo:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$titleSimName$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$titleSimName$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;->$subInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1, p0}, Lcom/android/settings/network/SimOnboardingService;->getSubscriptionInfoDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
