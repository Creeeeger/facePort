.class public final Lcom/android/systemui/dump/ParsedArgs;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public command:Ljava/lang/String;

.field public dumpPriority:Ljava/lang/String;

.field public listOnly:Z

.field public matchAll:Z

.field public final nonFlagArgs:Ljava/util/List;

.field public proto:Z

.field public final rawArgs:[Ljava/lang/String;

.field public tailLength:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    return-void
.end method
