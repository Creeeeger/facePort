.class public final Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$summary$1;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$summary$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    iput-object v0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$icon$1;

    invoke-direct {p2, p1}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$icon$1;-><init>(Landroid/telephony/SubscriptionInfo;)V

    new-instance p3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x1dcdcc8

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance p2, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$changeable$1;

    invoke-direct {p2, p5, p4}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$changeable$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->changeable:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$checked$1;

    invoke-direct {p2, p6}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$checked$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$onCheckedChange$1;

    invoke-direct {p2, p7, p8, p1}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1$onCheckedChange$1;-><init>(Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;Landroid/telephony/SubscriptionInfo;)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->changeable:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;->title:Ljava/lang/String;

    return-object p0
.end method
