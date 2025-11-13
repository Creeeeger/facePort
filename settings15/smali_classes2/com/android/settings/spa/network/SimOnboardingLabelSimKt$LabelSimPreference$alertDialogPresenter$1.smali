.class final Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;
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

.field final synthetic $originalSimCarrierName:Ljava/lang/String;

.field final synthetic $subInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic $titleSimName$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$originalSimCarrierName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$titleSimName$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$titleSimName$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$originalSimCarrierName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;->$titleSimName$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "subInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/settings/network/SimOnboardingService;->renameMutableMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->renameMutableMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "renameMutableMap add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " into: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimOnboardingService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
