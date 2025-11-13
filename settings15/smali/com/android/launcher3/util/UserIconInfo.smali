.class public final Lcom/android/launcher3/util/UserIconInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->hashCode()I

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/util/UserIconInfo;->type:I

    return-void
.end method
