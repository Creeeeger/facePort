.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$Companion;->$r8$clinit:I

    return-void
.end method


# virtual methods
.method public abstract getLookupKey()Ljava/lang/String;
.end method

.method public logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "networkType"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
