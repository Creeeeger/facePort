.class public final synthetic Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

.field public final synthetic f$2:Ljava/util/concurrent/BlockingDeque;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    iput-object p3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, [Lcom/android/systemui/keyguardimage/ImageCreator;

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    sget v2, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->$r8$clinit:I

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v6, v1, v7}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Landroid/util/Pair;

    invoke-interface {v6, v1, v7}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "KeyguardImageProvider"

    const-string v1, "%d images were created"

    invoke-static {v2, v0, v1, p0}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    sget v2, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v2, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
