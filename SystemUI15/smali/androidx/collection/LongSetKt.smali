.class public abstract Landroidx/collection/LongSetKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EmptyLongArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableLongSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongSet;-><init>(I)V

    new-array v0, v1, [J

    sput-object v0, Landroidx/collection/LongSetKt;->EmptyLongArray:[J

    return-void
.end method
