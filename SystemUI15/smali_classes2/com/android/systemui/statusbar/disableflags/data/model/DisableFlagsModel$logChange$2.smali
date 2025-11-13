.class final Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$logChange$2;
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
.field final synthetic $disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$logChange$2;->$disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$logChange$2;->$disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
