.class final synthetic Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;

    invoke-direct {v0}, Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "<init>()V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method
