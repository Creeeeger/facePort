.class public final Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt$lambda-1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/jvm/internal/Lambda;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f14035e

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt$lambda-1$1$1;->title:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProvider;

    const-string v0, "BatteryOptimizationModeAppList"

    invoke-static {p1, v0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->navigator(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt$lambda-1$1$1;->onClick:Lkotlin/jvm/internal/Lambda;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt$lambda-1$1$1;->onClick:Lkotlin/jvm/internal/Lambda;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt$lambda-1$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
