.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final flipY:Z

.field public glObj:Ljava/util/List;

.field public program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

.field public texture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

.field public useMipmapping:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->flipY:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;-><init>(Z)V

    return-void
.end method
