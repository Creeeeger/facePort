.class public final Landroidx/appcompat/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SynchronizedPool;


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method
