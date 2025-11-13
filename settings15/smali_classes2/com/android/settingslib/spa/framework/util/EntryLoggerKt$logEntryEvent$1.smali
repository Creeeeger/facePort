.class final Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/android/settingslib/spa/framework/common/LogEvent;",
        "extraData",
        "Landroid/os/Bundle;",
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
.field final synthetic $arguments:Landroid/os/Bundle;

.field final synthetic $entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$entryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$arguments:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/settingslib/spa/framework/common/LogEvent;

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/settings/spa/SettingsSpaEnvironment;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$entryId:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/spa/framework/common/LogCategory;->VIEW:Lcom/android/settingslib/spa/framework/common/LogCategory;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$arguments:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object p0, v0, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    invoke-interface {p0, v1, p1, v2, p2}, Lcom/android/settingslib/spa/framework/common/SpaLogger;->event(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/LogEvent;Lcom/android/settingslib/spa/framework/common/LogCategory;Landroid/os/Bundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
