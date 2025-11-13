.class final Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $record:Lcom/android/settings/spa/app/AppRecordWithSize;

.field final synthetic $storageSummary:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/app/AllAppListModel;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lcom/android/settings/spa/app/AppRecordWithSize;Lcom/android/settings/spa/app/AllAppListModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$storageSummary:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    iput-object p3, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/AllAppListModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$storageSummary:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v1, v1, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v1, v1, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/AllAppListModel;

    iget-object v1, v1, Lcom/android/settings/spa/app/AllAppListModel;->context:Landroid/content/Context;

    const v2, 0x7f141a57

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/AllAppListModel;

    iget-object v1, v1, Lcom/android/settings/spa/app/AllAppListModel;->isDisabled:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    check-cast v1, Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;

    invoke-virtual {v1, v2}, Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/AllAppListModel;

    iget-object v1, v1, Lcom/android/settings/spa/app/AllAppListModel;->context:Landroid/content/Context;

    const v2, 0x7f140d0a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineSeparator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v5, 0x3e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/AllAppListModel;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/spa/app/AllAppListModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
