.class public final Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;


# instance fields
.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onIdSelected:Lkotlin/jvm/functions/Function1;

.field public final options:Ljava/util/List;

.field public final selectedId:Landroidx/compose/runtime/MutableIntState;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->options:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->selectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->onIdSelected:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1$icon$1;

    invoke-direct {p1, p5}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1$icon$1;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p3, 0x7e7d4961    # 8.416892E37f

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnIdSelected()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->onIdSelected:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->options:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedId()Landroidx/compose/runtime/MutableIntState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->selectedId:Landroidx/compose/runtime/MutableIntState;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$CreatePrimarySimListPreference$1;->title:Ljava/lang/String;

    return-object p0
.end method
