.class final Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newChecked",
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
.field final synthetic $checked:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isFinished:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;

.field final synthetic $subInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$checked:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    iput-object p4, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$isFinished:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$checked:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const-string p1, "selectedSubInfo"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$isFinished:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
