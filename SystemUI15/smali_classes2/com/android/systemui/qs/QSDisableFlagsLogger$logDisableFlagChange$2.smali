.class final Lcom/android/systemui/qs/QSDisableFlagsLogger$logDisableFlagChange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDisableFlagsLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSDisableFlagsLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSDisableFlagsLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDisableFlagsLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong1()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong2()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
