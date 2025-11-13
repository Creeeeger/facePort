.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logChipCreateRemove(IZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipCreateRemove$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipCreateRemove$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logChipVisible(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logCurrentProfilesChanged(Ljava/util/List;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logHideChipByKeyguard(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logHideChipByKeyguard$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logHideChipByKeyguard$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPrivacyDialogDismissed()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPrivacyDotViewState(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDotViewState$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDotViewState$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPrivacyItemsToHold(Ljava/util/List;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    const-string v2, ", "

    const/16 v6, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPrivacyItemsUpdateScheduled(J)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sget-object p1, Lcom/android/systemui/privacy/logging/PrivacyLoggerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logRetrievedPrivacyItemsList(Ljava/util/List;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    sget-object v5, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    const-string v2, ", "

    const/16 v6, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logShowDialogContents(Ljava/util/List;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStartSettingsActivityFromDialog(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStatusBarAlpha(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarAlpha$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarAlpha$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStatusBarIconsVisible(ZZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUnfilteredPermGroupUsage(Ljava/util/List;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdatedItemFromAppOps(Ljava/lang/String;IIZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;

    const-string v2, "PrivacyLog"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p3, p2, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p4, p2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
