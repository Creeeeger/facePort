.class public abstract Landroidx/picker/features/scs/AbstractAppDataListFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# static fields
.field public static final EMPTY_FACTORY:Landroidx/picker/features/scs/AbstractAppDataListFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/picker/features/scs/AbstractAppDataListFactory$1;

    invoke-direct {v0}, Landroidx/picker/features/scs/AbstractAppDataListFactory$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDataList()Ljava/util/List;
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AbstractAppDataListFactory"

    return-object p0
.end method
