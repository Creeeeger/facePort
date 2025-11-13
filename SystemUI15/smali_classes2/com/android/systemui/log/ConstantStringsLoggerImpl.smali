.class public final Lcom/android/systemui/log/ConstantStringsLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    return-void
.end method
