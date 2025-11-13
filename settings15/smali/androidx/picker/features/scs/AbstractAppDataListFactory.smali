.class public abstract Landroidx/picker/features/scs/AbstractAppDataListFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# static fields
.field public static final EMPTY_FACTORY:Landroidx/picker/features/scs/AbstractAppDataListFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getDataList(I)Ljava/util/List;
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AbstractAppDataListFactory"

    return-object p0
.end method
