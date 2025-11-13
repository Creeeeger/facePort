.class public final Lcom/android/settingslib/spa/framework/common/SettingsPage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;


# instance fields
.field public final arguments:Landroid/os/Bundle;

.field public final displayName:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final metricsCategory:I

.field public final parameter:Ljava/util/List;

.field public final sppName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "sppName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    iput-object p4, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    iput-object p6, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final UiLayout(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x4e52d41b    # 8.84279E8f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->getPageProvider(Ljava/lang/String;)Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    const/16 v2, 0x8

    invoke-interface {v0, v1, p1, v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SettingsPage$UiLayout$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/framework/common/SettingsPage$UiLayout$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    iget v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SettingsPage(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sppName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", metricsCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", displayName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", parameter="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", arguments="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
