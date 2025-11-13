.class final Lcom/android/systemui/flags/RefactorFlag$Companion$forView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $flag:Lcom/android/systemui/flags/UnreleasedFlag;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/UnreleasedFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/RefactorFlag$Companion$forView$1;->$flag:Lcom/android/systemui/flags/UnreleasedFlag;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/flags/FeatureFlags;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
