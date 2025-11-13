.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Landroid/media/SoundPool;

.field public final synthetic $targetStream:I


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$it:Landroid/media/SoundPool;

    iput p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$targetStream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$it:Landroid/media/SoundPool;

    iget p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$targetStream:I

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    return-void
.end method
