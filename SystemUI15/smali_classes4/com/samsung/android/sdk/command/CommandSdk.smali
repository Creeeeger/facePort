.class public final Lcom/samsung/android/sdk/command/CommandSdk;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sWaitLock:Ljava/lang/Object;


# instance fields
.field public mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/command/CommandSdk$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/CommandSdk;-><init>()V

    return-void
.end method
