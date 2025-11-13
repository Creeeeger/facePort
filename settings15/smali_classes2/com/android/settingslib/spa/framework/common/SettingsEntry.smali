.class public final Lcom/android/settingslib/spa/framework/common/SettingsEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public final id:Ljava/lang/String;

.field public final isAllowSearch:Z

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public final searchDataImpl:Lkotlin/jvm/functions/Function1;

.field public final sliceDataImpl:Lkotlin/jvm/functions/Function2;

.field public final statusDataImpl:Lkotlin/jvm/functions/Function1;

.field public final toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public final uiLayoutImpl:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusDataImpl"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchDataImpl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceDataImpl"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiLayoutImpl"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-object p5, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-object p6, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-boolean p7, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch:Z

    iput-object p8, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->statusDataImpl:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->searchDataImpl:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->sliceDataImpl:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->uiLayoutImpl:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final UiLayout(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;II)V
    .locals 6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x70f082a3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x79e5af9d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v2, v2, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x1ab3ba01

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    sget-object v4, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->LocalEntryDataProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    const v5, 0x481b021d

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    new-instance v5, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Landroid/os/Bundle;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/settingslib/spa/framework/common/SettingsEntry$UiLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry$UiLayout$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroid/os/Bundle;)V

    const v0, -0x31b8fde3    # -8.347011E8f

    invoke-static {v0, v2, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, p2, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$UiLayout$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/settingslib/spa/framework/common/SettingsEntry$UiLayout$2;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroid/os/Bundle;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget-object v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch:Z

    iget-boolean v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->statusDataImpl:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->statusDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->searchDataImpl:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->searchDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->sliceDataImpl:Lkotlin/jvm/functions/Function2;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->sliceDataImpl:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->uiLayoutImpl:Lkotlin/jvm/functions/Function3;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->uiLayoutImpl:Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->label:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch:Z

    invoke-static {v2, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v2

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->statusDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->searchDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->sliceDataImpl:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->uiLayoutImpl:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingsEntry(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSearchDataDynamic=false, hasMutableStatus=false, hasSliceSupport=false, statusDataImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->statusDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchDataImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->searchDataImpl:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sliceDataImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->sliceDataImpl:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiLayoutImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->uiLayoutImpl:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
