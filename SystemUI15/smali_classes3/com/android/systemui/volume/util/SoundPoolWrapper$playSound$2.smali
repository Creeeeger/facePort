.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $direction:I

.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iget-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    iget v2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->$direction:I

    aget v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    :cond_1
    return-void
.end method
