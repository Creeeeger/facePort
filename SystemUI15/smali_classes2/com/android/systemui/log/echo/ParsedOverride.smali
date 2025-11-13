.class public final Lcom/android/systemui/log/echo/ParsedOverride;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final level:Lcom/android/systemui/log/core/LogLevel;

.field public final name:Ljava/lang/String;

.field public final type:Lcom/android/systemui/log/echo/EchoOverrideType;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/echo/ParsedOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    iput-object p2, p0, Lcom/android/systemui/log/echo/ParsedOverride;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/log/echo/ParsedOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    return-void
.end method
