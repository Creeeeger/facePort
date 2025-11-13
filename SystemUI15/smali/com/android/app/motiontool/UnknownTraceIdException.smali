.class public final Lcom/android/app/motiontool/UnknownTraceIdException;
.super Ljava/lang/Exception;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final traceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/android/app/motiontool/UnknownTraceIdException;->traceId:I

    return-void
.end method


# virtual methods
.method public final getTraceId()I
    .locals 0

    iget p0, p0, Lcom/android/app/motiontool/UnknownTraceIdException;->traceId:I

    return p0
.end method
