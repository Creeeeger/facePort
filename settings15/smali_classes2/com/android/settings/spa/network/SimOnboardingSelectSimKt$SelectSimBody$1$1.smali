.class public final Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;


# instance fields
.field public final synthetic $phoneNumber:Landroidx/compose/runtime/State;

.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->$phoneNumber:Landroidx/compose/runtime/State;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$checked$1;

    invoke-direct {p1, p3}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$checked$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$onCheckedChange$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$changeable$1;

    invoke-direct {p1, p5, p6, p3}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$changeable$1;-><init>(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->changeable:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$summary$1;

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->$phoneNumber:Landroidx/compose/runtime/State;

    invoke-direct {v0, p0}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1$summary$1;-><init>(Landroidx/compose/runtime/State;)V

    return-object v0
.end method
