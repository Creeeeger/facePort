.class public final Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;

    invoke-direct {v0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logPackageNotFound(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logPackageNotFound$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logPackageNotFound$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public static logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChange$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public static logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChangeError$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils$logStateChangeError$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
