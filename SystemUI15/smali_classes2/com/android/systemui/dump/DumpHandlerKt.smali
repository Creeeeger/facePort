.class public abstract Lcom/android/systemui/dump/DumpHandlerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final COMMANDS:[Ljava/lang/String;

.field public static final DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

.field public static final PRIORITY_OPTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/dump/DumpHandlerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    const-string v0, "CRITICAL"

    const-string v1, "NORMAL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dump/DumpHandlerKt;->PRIORITY_OPTIONS:[Ljava/lang/String;

    const-string v6, "config"

    const-string v7, "help"

    const-string v1, "bugreport-critical"

    const-string v2, "bugreport-normal"

    const-string v3, "buffers"

    const-string v4, "dumpables"

    const-string/jumbo v5, "tables"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dump/DumpHandlerKt;->COMMANDS:[Ljava/lang/String;

    return-void
.end method
