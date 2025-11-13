.class public final Lcom/android/systemui/shade/ShadeWindowLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    const-string/jumbo v1, "systemui.shadewindow"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;-><init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    return-void
.end method
