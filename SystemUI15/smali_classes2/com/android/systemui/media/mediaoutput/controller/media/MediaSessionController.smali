.class public final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;
.super Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName$delegate:Lkotlin/Lazy;

.field public final callback:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;

.field public final colorSchemeLoader:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

.field public final mediaController:Landroid/media/session/MediaController;

.field public mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

.field public final packageName$delegate:Lkotlin/Lazy;

.field public final progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

.field public final resources$delegate:Lkotlin/Lazy;

.field public thumbnailNullCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaController;)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    invoke-direct {v7}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;-><init>()V

    iput-object v7, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->colorSchemeLoader:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;

    invoke-direct {v3, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$packageName$2;

    invoke-direct {v2, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$packageName$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->packageName$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;

    invoke-direct {v2, v1, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->appName$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$resources$2;

    invoke-direct {v2, v1, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$resources$2;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->resources$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;

    invoke-direct {v2, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->callback:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;

    const-string v2, "MediaSessionController"

    const-string v3, "init()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->empty:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x1ffc

    invoke-static/range {v8 .. v25}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    iget-object v3, v6, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->_mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$1;

    const/4 v8, 0x0

    invoke-direct {v3, v6, v8}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    invoke-static {v2, v8, v8, v3, v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "auracast_assistant_notification_channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt;->IcAuracast$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Badge;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt;->MusicShare$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$2;

    invoke-direct {v3, v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V

    new-instance v10, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;

    const/4 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v7, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, v8, v8, v10, v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    return-void
.end method

.method public static final access$update(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Landroid/media/MediaMetadata;)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v6, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "android.media.metadata.ART"

    invoke-virtual {v6, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v6, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_8

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isGrayscaleThumbnail:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v2, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p1

    iget-object v2, v9, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->thumbnail:Landroidx/compose/ui/graphics/ImageBitmap;

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v9

    goto :goto_2

    :cond_5
    move-object v2, v7

    :goto_2
    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$2$2;

    invoke-direct {v2, v0, v7}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$2$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lkotlin/coroutines/Continuation;)V

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->colorSchemeLoader:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iget-object v4, v3, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->processingJob:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_7

    invoke-interface {v4, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$1;

    invoke-direct {v4, v1, v2, v7}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$1;-><init>(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object v2, v3, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v2, v7, v7, v4, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v3, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->processingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->thumbnailNullCount:I

    goto :goto_3

    :cond_8
    move-object/from16 v9, p1

    iget v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->thumbnailNullCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->thumbnailNullCount:I

    if-le v1, v8, :cond_9

    const-string v1, "MediaSessionController"

    const-string/jumbo v2, "update() - thumbnail is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v7, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v5, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v7

    :cond_c
    :goto_4
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    goto :goto_5

    :cond_d
    move-object v0, v7

    :goto_5
    if-eqz v0, :cond_e

    :goto_6
    move-object v12, v0

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v1, 0x7f130cf7

    invoke-direct {v0, v1, v7, v8, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :goto_7
    if-eqz v6, :cond_f

    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_f
    move-object v13, v7

    if-eqz v6, :cond_10

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_8
    move-wide v14, v0

    goto :goto_9

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_8

    :goto_9
    const/16 v23, 0x0

    const/16 v26, 0x1fe3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v26}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final access$update(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Landroid/media/session/PlaybackState;)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_0
    move v11, v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_1

    :cond_1
    move-wide v12, v2

    :goto_1
    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    if-eq v11, v0, :cond_2

    const/4 v0, 0x6

    if-eq v11, v0, :cond_2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->pause:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    goto :goto_2

    :goto_3
    const-wide/16 v5, 0x206

    invoke-static {v12, v13, v5, v6}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->isSet(JJ)Z

    move-result v7

    const-wide/16 v5, 0x0

    const/16 v9, 0x17

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;JZFI)Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x10

    invoke-static {v12, v13, v4, v5}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->isSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->previous:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v14, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-wide/16 v4, 0x8

    invoke-static {v12, v13, v4, v5}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->isSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->rewind:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v14, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_4
    const-wide/16 v4, 0x20

    invoke-static {v12, v13, v4, v5}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->isSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->next:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const-wide/16 v4, 0x40

    invoke-static {v12, v13, v4, v5}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->isSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->forward:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/media/session/PlaybackState$CustomAction;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p0

    :try_start_1
    iget-object v0, v8, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->resources$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v9

    sget-object v10, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v9, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v8, p0

    :goto_7
    sget v9, Lkotlin/Result;->$r8$clinit:I

    new-instance v9, Lkotlin/Result$Failure;

    invoke-direct {v9, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v9

    :goto_8
    instance-of v9, v0, Lkotlin/Result$Failure;

    if-eqz v9, :cond_8

    move-object v0, v6

    :cond_8
    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v9

    int-to-long v9, v9

    sget-object v15, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;->toConverter(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    move-result-object v18

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    :goto_9
    move-object/from16 v19, v0

    goto :goto_b

    :cond_a
    :goto_a
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :goto_b
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move-object v15, v6

    move-wide/from16 v16, v9

    invoke-direct/range {v15 .. v23}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;-><init>(JLandroidx/compose/ui/graphics/painter/Painter;Ljava/lang/CharSequence;ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_b
    if-eqz v6, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_10

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x5

    if-ge v4, v8, :cond_d

    move-object v4, v14

    goto :goto_d

    :cond_d
    move-object v4, v6

    :goto_d
    if-nez v4, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_f

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    invoke-virtual {v14, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_e
    move v4, v7

    goto :goto_c

    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_f

    :cond_12
    move-wide v8, v2

    :goto_f
    const/4 v15, 0x0

    const/16 v18, 0x1c5f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v18}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V
    .locals 9

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, p3

    :goto_0
    and-int/lit8 p3, p5, 0x8

    if-eqz p3, :cond_3

    move-object v7, v1

    goto :goto_1

    :cond_3
    move-object v7, p4

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isClosed:Z

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->state(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_1
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/Pair;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p1, v1, v1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_2
    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 2

    const-string v0, "MediaSessionController"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->empty:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isClosed:Z

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->colorSchemeLoader:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->processingJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->state(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->callback:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    return-void
.end method

.method public final execute(JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v8, p3

    const-string v3, "execute() - "

    const-string v4, " : "

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaSessionController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v15, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    const-wide/16 v3, 0x8

    cmp-long v3, v1, v3

    sget-object v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    if-nez v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x59

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    goto/16 :goto_2

    :cond_0
    const-wide/16 v5, 0x10

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x58

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPrevious;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPrevious;

    invoke-static {v0, v1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto/16 :goto_2

    :cond_1
    const-wide/16 v5, 0x200

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x55

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    goto/16 :goto_2

    :cond_2
    const-wide/16 v5, 0x4

    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x7e

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPlayPause;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPlayPause;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Action;

    const-string v3, "Play"

    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Action;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    goto/16 :goto_2

    :cond_3
    const-wide/16 v5, 0x2

    cmp-long v3, v1, v5

    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x7f

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPlayPause;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaPlayPause;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Action;

    const-string v3, "Pause"

    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Action;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    goto/16 :goto_2

    :cond_4
    const-wide/16 v5, 0x20

    cmp-long v3, v1, v5

    if-nez v3, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x57

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaNext;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaNext;

    invoke-static {v0, v1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto/16 :goto_2

    :cond_5
    const-wide/16 v5, 0x40

    cmp-long v3, v1, v5

    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x5a

    invoke-static {v15, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;->dispatchMediaButtonEvent(Landroid/media/session/MediaController;I)V

    goto/16 :goto_2

    :cond_6
    const-wide/16 v3, 0x100

    cmp-long v3, v1, v3

    if-nez v3, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gez v1, :cond_7

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->state(Z)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    const/16 v18, 0x1fdf

    move-wide/from16 v8, p3

    invoke-static/range {v1 .. v18}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->_mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v1

    if-nez v6, :cond_9

    goto :goto_0

    :cond_a
    move-object v4, v5

    :goto_0
    check-cast v4, Landroid/media/session/PlaybackState$CustomAction;

    if-eqz v4, :cond_d

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V

    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_b

    move-object v5, v1

    :cond_b
    if-eqz v5, :cond_c

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaControlCustomButton1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaControlCustomButton1;

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaControlCustomButton2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$MediaControlCustomButton2;

    :goto_1
    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Name;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Name;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->appName$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->packageName$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
