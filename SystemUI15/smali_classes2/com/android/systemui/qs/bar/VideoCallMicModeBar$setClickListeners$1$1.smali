.class final synthetic Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string/jumbo v4, "setClickListeners$sendEvent(Ljava/lang/String;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string/jumbo v3, "sendEvent"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
