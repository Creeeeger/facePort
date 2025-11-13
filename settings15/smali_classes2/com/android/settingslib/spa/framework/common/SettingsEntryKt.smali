.class public abstract Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LocalEntryDataProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt$LocalEntryDataProvider$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SettingsEntryKt$LocalEntryDataProvider$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->LocalEntryDataProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method
