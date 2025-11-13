.class public final Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f141811

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->title:Ljava/lang/String;

    sget-object p1, Lcom/android/settings/spa/network/ComposableSingletons$SimsSectionKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p1, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance p1, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2$onClick$1;

    invoke-direct {p1, p2}, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2$onClick$1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;->title:Ljava/lang/String;

    return-object p0
.end method
