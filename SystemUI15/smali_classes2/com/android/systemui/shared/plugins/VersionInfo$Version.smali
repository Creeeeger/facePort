.class public final Lcom/android/systemui/shared/plugins/VersionInfo$Version;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRequired:Z

.field public final mVersion:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/plugins/VersionInfo$Version;->mVersion:I

    iput-boolean p2, p0, Lcom/android/systemui/shared/plugins/VersionInfo$Version;->mRequired:Z

    return-void
.end method
