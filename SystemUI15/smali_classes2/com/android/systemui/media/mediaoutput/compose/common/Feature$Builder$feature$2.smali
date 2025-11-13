.class final Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    new-instance p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;-><init>(Ljava/lang/String;ZIZZLcom/android/systemui/media/mediaoutput/compose/Screen;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
