.class public final Lcom/android/launcher3/util/UserIconInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/util/UserIconInfo;->type:I

    return-void
.end method
