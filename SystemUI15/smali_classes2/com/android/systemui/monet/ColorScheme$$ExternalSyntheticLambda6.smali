.class public final synthetic Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda6;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda6;->f$0:Z

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/ux/material/libmonet/hct/Hct;->fromInt(I)Lcom/google/ux/material/libmonet/hct/Hct;

    move-result-object p0

    iget-wide p0, p0, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
