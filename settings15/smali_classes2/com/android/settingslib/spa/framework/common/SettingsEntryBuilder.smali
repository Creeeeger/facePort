.class public final Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;


# instance fields
.field public fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public isAllowSearch:Z

.field public label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public searchDataFn:Lkotlin/jvm/functions/Function1;

.field public final sliceDataFn:Lkotlin/jvm/functions/Function2;

.field public final statusDataFn:Lkotlin/jvm/functions/Function1;

.field public toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field public uiLayoutFn:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->label:Ljava/lang/String;

    sget-object p1, Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->uiLayoutFn:Lkotlin/jvm/functions/Function3;

    sget-object p1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$statusDataFn$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$statusDataFn$1;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->statusDataFn:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$searchDataFn$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$searchDataFn$1;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$sliceDataFn$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$sliceDataFn$1;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->sliceDataFn:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    :cond_3
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v2, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->getPageProvider(Ljava/lang/String;)Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->isEnabled()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v5, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v6, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->name:Ljava/lang/String;

    const-string v7, "name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "owner"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v7

    :goto_1
    if-eqz v5, :cond_3

    iget-object v7, v5, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    :cond_3
    const-string v5, ":"

    invoke-static {v6, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    const-string v6, "("

    const-string v8, "-"

    invoke-static {v5, v2, v6, v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v2, 0x24

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    const-string v2, "toString(...)"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->label:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v12, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->isAllowSearch:Z

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    move v13, v3

    iget-object v14, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->statusDataFn:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->sliceDataFn:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->uiLayoutFn:Lkotlin/jvm/functions/Function3;

    new-instance v3, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget-object v8, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->name:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-object v6, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v6 .. v17}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    return-object v3
.end method

.method public final setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->uiLayoutFn:Lkotlin/jvm/functions/Function3;

    return-void
.end method
