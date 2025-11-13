.class public final Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/command/CommandSdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/command/CommandSdk;-><init>(Lcom/samsung/android/sdk/command/CommandSdk$1;)V

    sput-object v0, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
