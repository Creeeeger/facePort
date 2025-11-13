.class public final Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Lcom/android/settings/datausage/BillingCyclePreference;Landroid/net/NetworkTemplate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f140641

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1$enabled$1;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1$enabled$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1$onClick$1;

    invoke-direct {p1, p3, p4}, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1$onClick$1;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;Landroid/net/NetworkTemplate;)V

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCyclePreference$setTemplate$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
